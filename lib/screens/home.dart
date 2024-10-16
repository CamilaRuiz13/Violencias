import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFFFCBE1A),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/pretty-serious.jpg',
          height: 155,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 0),

        // Columna para "VIOLENCIAS"
        Column(
          children: [
            // Fila para "VIOLENCIAS" y su imagen
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform(
                  transform: Matrix4.translationValues(-90.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/icons/Recurso 8.png',
                    height: 25,
                  ),
                ),
                const SizedBox(width: 0),
                Text(
                  'VIOLENCIAS            ',
                  style: TextStyle(
                    fontFamily: 'AmsiPro-Ultra',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 145, 39, 120),
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(width: 0),
                Transform(
                  transform: Matrix4.translationValues(90.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/icons/Recurso 7.png',
                    height: 25,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BASADAS',
                  style: TextStyle(
                    fontFamily: 'AmsiPro-Ultra',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.purple,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),

        // Columna para "EN GÉNERO"
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EN GÉNERO',
              style: TextStyle(
                fontFamily: 'AmsiPro-Ultra',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 145, 39, 120),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),

        // Texto para "Y VIOLENCIA SEXUAL POLITÉCNICO JAIME ISAZA CADAVID"
        const Text(
          'Y VIOLENCIA SEXUAL POLITÉCNICO JAIME ISAZA CADAVID',
          style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 255, 255, 255)),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 10),
        _buildNavButton(context, 'INICIO', 'assets/icons/Recurso 10.png', '/home'),
        _buildNavButton(context, 'LÍNEAS DE EMERGENCIA', 'assets/icons/recurso3.png', '/lineas_de_llamada'),
        _buildNavButton(context, 'PROTOCOLO VBG Y VSX.', 'assets/icons/Recurso 4.png', '/protocolo_vbg_y_vsx'),
        _buildNavButton(context, 'ATENCIÓN PSICOJURÍDICA.', 'assets/icons/Recurso 5.png', '/solicitud_de_atencion_psicojuridica'),
        _buildNavButton(context, 'FORMACIÓN VBG.', 'assets/icons/Recurso 6.png', '/formacion_vbg'),
      ],
    );
  }

  Widget _buildNavButton(BuildContext context, String text, String iconPath, String route) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8E24AA),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          textStyle: const TextStyle(fontSize: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 24,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'AmsiPro-Ultra',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}