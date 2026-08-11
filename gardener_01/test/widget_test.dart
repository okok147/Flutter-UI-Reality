import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gardener_01/main.dart';

void main() {
  testWidgets('renders the Gardener landing page', (tester) async {
    await tester.pumpWidget(const GardenerApp());

    expect(find.text('Find a'), findsOneWidget);
    expect(find.text('Gardener'), findsOneWidget);
    expect(find.text('Search for gardeners'), findsOneWidget);
    expect(find.text('Filters'), findsOneWidget);
  });

  testWidgets('opens search results with every gardener', (tester) async {
    await tester.pumpWidget(const GardenerApp());
    await tester.ensureVisible(find.byKey(const Key('open-search-button')));
    await tester.tap(find.byKey(const Key('open-search-button')));
    await tester.pumpAndSettle();

    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Results'), findsOneWidget);
    expect(find.text('Megan Watkins'), findsOneWidget);
    expect(find.text('Bobby Vargas'), findsOneWidget);
    expect(find.text('Lori Freeman'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Pamela Holmes'), 160);
    expect(find.text('Pamela Holmes'), findsOneWidget);
    expect(find.text('All gardeners · 4 results'), findsOneWidget);
  });

  testWidgets('filters results by distance', (tester) async {
    await tester.pumpWidget(const GardenerApp());
    await tester.ensureVisible(find.byKey(const Key('open-search-button')));
    await tester.tap(find.byKey(const Key('open-search-button')));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Filter gardeners'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Within 3 km').last);
    await tester.pumpAndSettle();

    expect(find.text('Within 3 km · 2 results'), findsOneWidget);
    expect(find.text('Megan Watkins'), findsOneWidget);
    expect(find.text('Bobby Vargas'), findsOneWidget);
    expect(find.text('Lori Freeman'), findsNothing);
    expect(find.text('Pamela Holmes'), findsNothing);
  });
}
