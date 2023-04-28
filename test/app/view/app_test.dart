import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_example/app/app.dart';
import 'package:riverpod_example/home/presentation/page/home.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
