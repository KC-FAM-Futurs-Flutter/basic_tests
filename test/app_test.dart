import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';
import 'package:basic_tests/main.dart' as app;

void main() {
  testWidgets('Full app flow test', (tester) async {
    app.main();
    await tester.pumpAndSettle();

    //Verify init value
    expect(find.text('Count: 0'), findsOneWidget);

    //Pulsar boton de incrementar
    await tester.tap(find.byKey(Key('increment_button')));
    await tester.pump();
    expect(find.text('Count: 1'), findsOneWidget);

    //Pulsar botón de decrementar
    await tester.tap(find.byKey(Key('decrement_button')));
    await tester.pump();
    expect(find.text('Count: 0'), findsOneWidget);
  });
}
