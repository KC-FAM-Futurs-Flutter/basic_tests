import 'package:basic_tests/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CounterWidget increments and decrements', (tester) async {
    await tester.pumpWidget(MaterialApp(home: CounterWidget()));
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
