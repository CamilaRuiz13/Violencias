import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FormacionVbg extends StatelessWidget {
  const FormacionVbg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.zero, // Sin padding para ocupar el 100%
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen adaptada al tamaño de la pantalla
              Container(
                width: double.infinity, // Ancho del contenedor igual al ancho de la pantalla
                height: MediaQuery.of(context).size.height * 0.25, // Altura del contenedor al 25% de la pantalla
                child: FittedBox(
                  fit: BoxFit.cover, // Ajustar la imagen sin perder proporciones
                  child: Image.asset(
                    'assets/images/formacion.jpeg',
                    // Eliminamos el ancho y altura fijos, pues FittedBox se encarga de ello
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Duración y Diplomado
              Container(
                width: double.infinity, // Ancho del contenedor igual al ancho de la pantalla
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  'Duración: 80 horas\nDIPLOMADO DE VIOLENCIAS BASADAS EN GÉNERO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8E24AA),
                    fontFamily: 'AmsiPro-Ultra',
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Texto adicional "Metodología: Virtual | Autogestionable"
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  'Metodología: Virtual | Autogestionable',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'AmsiPro-Ultra',
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botón "Inscríbete aquí"
              ElevatedButton.icon(
                onPressed: () async {
                  const url = 'https://docs.google.com/forms/d/e/1FAIpQLSeneu9KDXKz-xmA4fACDKefts-6iR-oj8CNtUQ8-nEgrZh9Ow/viewform';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'No se pudo abrir la URL $url';
                  }
                },
                icon: const Icon(Icons.touch_app),
                label: const Text('Inscríbete aquí'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange, 
                  minimumSize: Size(double.infinity, 50), // Ancho completo
                ),
              ),
              const SizedBox(height: 20),

              // Texto adicional para el "Curso de Violencias Basadas en Género"
              const Text(
                'Duración: 8 horas\nCURSO DE VIOLENCIAS BASADAS EN GÉNERO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8E24AA),
                  fontFamily: 'AmsiPro-Ultra',
                ),
              ),
              const SizedBox(height: 10),

              // Texto adicional "Metodología: Virtual | Autogestionable"
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  'Metodología: Virtual | Autogestionable',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'AmsiPro-Ultra',
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botón "Más Información"
              ElevatedButton.icon(
                onPressed: () async {
                  const url = 'https://docs.google.com/forms/d/e/1FAIpQLSd54lnBBc-uEkJh2cDICpqZr_TPq6dTQv2c_uJE-gogCeVbOA/viewform';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'No se pudo abrir la URL $url';
                  }
                },
                icon: const Icon(Icons.touch_app),
                label: const Text('Inscríbete aquí'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                  minimumSize: Size(double.infinity, 50), // Ancho completo
                ),
              ),
              const SizedBox(height: 20),

              // Contenido adicional antes del nuevo botón
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  'Duración: 80 horas\nDIPLOMADO DE VIOLENCIAS BASADAS EN GÉNERO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8E24AA),
                    fontFamily: 'AmsiPro-Ultra',
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Texto adicional
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Text(
                  'Metodología: Virtual | Autogestionable\nPara personal externo del Politecnico Colombiano Jaime Isaza Cadavid',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'AmsiPro-Ultra',
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Nuevo botón
              ElevatedButton.icon(
                onPressed: () async {
                  const url = 'https://docs.google.com/forms/u/0/d/1lJYsAlp_PqRz6_NED0H4YBDMgIryxXVQueVJZ3Y2_eE/viewform?edit_requested=true';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'No se pudo abrir la URL $url';
                  }
                },
                icon: const Icon(Icons.touch_app),
                label: const Text('Inscríbete aquí'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                  minimumSize: Size(double.infinity, 50), // Ancho completo
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FormacionVbg(),
  ));
}
