import 'package:flutter/material.dart';
import 'package:violencias/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';

class LineasDeLlamadas extends StatefulWidget {
  const LineasDeLlamadas({super.key});

  @override
  State<LineasDeLlamadas> createState() => _LineasDeLlamadasState();
}

class _LineasDeLlamadasState extends State<LineasDeLlamadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/Mujer fondo morado.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Ante una emergencia',
                  textAlign: TextAlign.center,
                  style: AppStyles.titleStyle,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Si acabas de ser víctima de alguna forma de violencia basada en género o violencia sexual, comunícate inmediatamente con:',
                  textAlign: TextAlign.center,
                  style: AppStyles.normalTextStyle,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Líneas nacionales',
                  textAlign: TextAlign.center,
                  style: AppStyles.titleStyle,
                ),
                const Text(
                  'Atención en emergencia a víctimas de Violencias basadas en Género y violencias sexuales:',
                  textAlign: TextAlign.center,
                  style: AppStyles.normalTextStyle,
                ),
                const SizedBox(height: 8),
                _buildEmergencyButton('Llamar al 123', 'tel:123', 'assets/icons/Recurso 2.png'),
                const SizedBox(height: 8),
                _buildEmergencyButton('Llamar al 155', 'tel:155', 'assets/icons/Recurso 2.png'),
                const SizedBox(height: 8),
                const Text(
                  'Línea amiga saludable',
                  style: AppStyles.titleStyle,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Atención en emergencia en salud mental:',
                  style: AppStyles.normalTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                _buildEmergencyButton('Llamar al 444 44 48', 'tel:44444448', 'assets/icons/Recurso 2.png'),
                const SizedBox(height: 8),
                _buildWhatsAppButton('+573007231123', 'assets/icons/whatsaap.png'), // Ajusta el número según tu país
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmergencyButton(String text, String uri, String iconPath) {
    return ElevatedButton(
      style: AppStyles.emergencyButtonStyle,
      onPressed: () async {
        if (await Permission.phone.request().isGranted) {
          final Uri url = Uri.parse(uri);
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('El permiso de llamada no fue concedido.')),
          );
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 24, // Ajusta el tamaño según sea necesario
            width: 24,
            color: Color.fromARGB(255, 145, 39, 120), // Cambia el color según tu tema
          ),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildWhatsAppButton(String number, String iconPath) {
    return ElevatedButton(
      style: AppStyles.emergencyButtonStyle,
      onPressed: () async {
        final Uri url = Uri.parse('https://wa.me/$number');
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 24, // Ajusta el tamaño según sea necesario
            width: 24,
            color: Color.fromARGB(255, 145, 39, 120),// Cambia el color según tu tema
          ),
          const SizedBox(width: 8),
          Text('$number'),
        ],
      ),
    );
  }
}