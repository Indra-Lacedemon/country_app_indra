import 'package:country_app_indra/users/ui/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('RegisterPage renders fields and validates', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: RegisterPage()));

    // Hay dos textos "Crear cuenta" (título y botón). Validamos el título por tipo.
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(3));
    expect(find.widgetWithText(FilledButton, 'Crear cuenta'), findsOneWidget);

    await tester.tap(find.widgetWithText(FilledButton, 'Crear cuenta'));
    await tester.pump();

    expect(find.text('Introduce tu correo'), findsOneWidget);
    expect(find.text('Introduce tu contraseña'), findsOneWidget);
    expect(find.text('Repite tu contraseña'), findsOneWidget);
  });
}

