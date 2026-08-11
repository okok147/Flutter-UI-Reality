import 'package:flutter/material.dart';
import 'package:gardener_01/notification.dart';
import 'package:gardener_01/utils.dart';

enum GardenerFilter { all, nearby, morning }

extension GardenerFilterLabel on GardenerFilter {
  String get label => switch (this) {
    GardenerFilter.all => 'All gardeners',
    GardenerFilter.nearby => 'Within 3 km',
    GardenerFilter.morning => 'Available before noon',
  };
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  GardenerFilter _filter = GardenerFilter.all;

  List<AppNotification> get _visibleGardeners => switch (_filter) {
    GardenerFilter.all => notifications,
    GardenerFilter.nearby =>
      notifications
          .where((gardener) => gardener.distanceKm <= 3)
          .toList(growable: false),
    GardenerFilter.morning =>
      notifications
          .where((gardener) => gardener.startHour < 12)
          .toList(growable: false),
  };

  @override
  Widget build(BuildContext context) {
    final gardeners = _visibleGardeners;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gardeners around me'),
        actions: [
          PopupMenuButton<GardenerFilter>(
            initialValue: _filter,
            tooltip: 'Filter gardeners',
            icon: const Icon(Icons.tune_rounded),
            onSelected: (filter) => setState(() => _filter = filter),
            itemBuilder: (context) => GardenerFilter.values
                .map(
                  (filter) => PopupMenuItem<GardenerFilter>(
                    value: filter,
                    child: Text(filter.label),
                  ),
                )
                .toList(growable: false),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        top: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Search',
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(
                                color: AppPalette.orange.withValues(
                                  alpha: 0.88,
                                ),
                                fontWeight: FontWeight.w800,
                                height: 1,
                              ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Results',
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(
                                color: AppPalette.purple.withValues(
                                  alpha: 0.88,
                                ),
                                fontWeight: FontWeight.w800,
                                height: 1,
                              ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          '${_filter.label} · ${gardeners.length} result${gardeners.length == 1 ? '' : 's'}',
                          key: const Key('filter-summary'),
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: AppPalette.purple.withValues(alpha: 0.7),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
                  sliver: SliverList.separated(
                    itemCount: gardeners.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) =>
                        GardenerCard(gardener: gardeners[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GardenerCard extends StatelessWidget {
  const GardenerCard({required this.gardener, super.key});

  final AppNotification gardener;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label:
          '${gardener.name}, ${gardener.distanceLabel} away, available ${gardener.availability}',
      container: true,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: AppPalette.purple.withValues(alpha: 0.14)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  color: AppPalette.sky,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(6),
                child: Image.asset(
                  gardener.image,
                  fit: BoxFit.contain,
                  excludeFromSemantics: true,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gardener.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppPalette.purple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Wrap(
                      spacing: 18,
                      runSpacing: 8,
                      children: [
                        _Metadata(
                          icon: Icons.location_on_rounded,
                          label: gardener.distanceLabel,
                          color: AppPalette.orange,
                        ),
                        _Metadata(
                          icon: Icons.access_time_rounded,
                          label: gardener.availability,
                          color: AppPalette.coral,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Metadata extends StatelessWidget {
  const _Metadata({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: color),
        const SizedBox(width: 5),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
