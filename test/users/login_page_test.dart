import 'package:country_app_indra/users/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoginPage renders fields and validates', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    expect(find.text('Iniciar sesión'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.text('Entrar'), findsOneWidget);

    await tester.tap(find.text('Entrar'));
    await tester.pump(); // triggers validation

    expect(find.text('Introduce tu correo'), findsOneWidget);
    expect(find.text('Introduce tu contraseña'), findsOneWidget);
  });
}

