import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kottra/app.dart';

void main() {
  testWidgets('App shows the KotTra title and bottom tabs', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: KottraApp()));
    await tester.pumpAndSettle();

    expect(find.text('KotTra'), findsOneWidget);
    expect(find.text('Tasks'), findsOneWidget);
    expect(find.text('Finance'), findsOneWidget);
  });
}