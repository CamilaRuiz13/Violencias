
import 'package:flutter_test/flutter_test.dart';
import 'package:violencias/main.dart';  // Asegúrate de que este sea el archivo correcto que contiene tu `MyApp`

void main() {
  testWidgets('Test de navegación con BottomNavigationBar', (WidgetTester tester) async {
    // Construye la aplicación MyApp y lanza un frame.
    await tester.pumpWidget(MyApp());

    // Verifica que la primera pantalla sea la correspondiente a 'Lineas de emergencia'
    expect(find.text('Lineas de emergencia'), findsOneWidget);

    // Toca el segundo ítem del BottomNavigationBar (LÍNEAS DE EMERGENCIA)
    await tester.tap(find.text('LÍNEAS DE EMERGENCIA'));
    await tester.pump();

    // Verifica que la segunda pantalla (FormacionVbg) se haya cargado
    expect(find.text('Formación VBG'), findsOneWidget);

    // Toca el tercer ítem del BottomNavigationBar (PROTOCOLO VBG Y VSX)
    await tester.tap(find.text('PROTOCOLO VBG Y VSX'));
    await tester.pump();

    // Verifica que la tercera pantalla (SolicitudDeAtencionPsicojuridica) se haya cargado
    expect(find.text('Solicitud de Atención Psicojurídica'), findsOneWidget);

    // Toca el ítem de inicio para volver a la pantalla inicial
    await tester.tap(find.text('INICIO'));
    await tester.pump();

    // Verifica que se ha vuelto a la pantalla inicial (LineasDeLlamadas)
    expect(find.text('Lineas de emergencia'), findsOneWidget);
  });
}
