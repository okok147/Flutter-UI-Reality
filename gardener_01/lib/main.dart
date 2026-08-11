import 'package:flutter/material.dart';
import 'package:gardener_01/search.dart';
import 'package:gardener_01/utils.dart';

void main() => runApp(const GardenerApp());

class GardenerApp extends StatelessWidget {
  const GardenerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme =
        ColorScheme.fromSeed(
          seedColor: AppPalette.purple,
          brightness: Brightness.light,
        ).copyWith(
          primary: AppPalette.purple,
          secondary: AppPalette.orange,
          surface: Colors.white,
        );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gardener',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: AppPalette.sky,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppPalette.sky,
          foregroundColor: AppPalette.purple,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
      ),
      home: const GardenerHomePage(),
    );
  }
}

class GardenerHomePage extends StatelessWidget {
  const GardenerHomePage({super.key});

  void _openSearch(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const SearchPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final heroHeight = (constraints.maxHeight * 0.44).clamp(
              280.0,
              430.0,
            );

            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: heroHeight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 20),
                      child: Image.asset(
                        AvailableImages.gardener,
                        fit: BoxFit.contain,
                        semanticLabel: 'Illustration of a gardener and plants',
                      ),
                    ),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(28),
                      ),
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 720),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 40, 28, 48),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Find a',
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
                                'Gardener',
                                style: Theme.of(context).textTheme.displaySmall
                                    ?.copyWith(
                                      color: AppPalette.purple.withValues(
                                        alpha: 0.88,
                                      ),
                                      fontWeight: FontWeight.w800,
                                      height: 1,
                                    ),
                              ),
                              const SizedBox(height: 48),
                              Wrap(
                                spacing: 12,
                                runSpacing: 12,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 250,
                                    height: 56,
                                    child: OutlinedButton.icon(
                                      key: const Key('open-search-button'),
                                      onPressed: () => _openSearch(context),
                                      icon: const Icon(Icons.search_rounded),
                                      label: const Text('Search for gardeners'),
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: AppPalette.purple,
                                        side: BorderSide(
                                          color: AppPalette.purple.withValues(
                                            alpha: 0.28,
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton.icon(
                                    onPressed: () => _openSearch(context),
                                    icon: const Icon(Icons.tune_rounded),
                                    label: const Text('Filters'),
                                    style: TextButton.styleFrom(
                                      foregroundColor: AppPalette.orange,
                                      minimumSize: const Size(112, 56),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
