import 'package:flutter/material.dart';
import 'package:plvbg/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class LineasDeLlamadas extends StatelessWidget {
  const LineasDeLlamadas({Key? key}) : super(key: key);

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
                _buildEmergencyButton(context, 'Llamar al 123', '123', 'assets/icons/Recurso 2.png'),
                const SizedBox(height: 8),
                _buildEmergencyButton(context, 'Llamar al 155', '155', 'assets/icons/Recurso 2.png'),
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
                _buildEmergencyButton(context, 'Llamar al 444 44 48', '6044444448', 'assets/icons/Recurso 2.png'),
                const SizedBox(height: 8),
                _buildWhatsAppButton(context, '573007231123', 'assets/icons/whatsaap.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmergencyButton(BuildContext context, String text, String phoneNumber, String iconPath) {
    return ElevatedButton(
      style: AppStyles.emergencyButtonStyle,
      onPressed: () => _makePhoneCall(phoneNumber),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 24,
            width: 24,
            color: const Color.fromARGB(255, 145, 39, 120),
          ),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (!await launchUrl(launchUri)) {
      throw 'Could not launch $launchUri';
    }
  }

  Widget _buildWhatsAppButton(BuildContext context, String number, String iconPath) {
    return ElevatedButton(
      style: AppStyles.emergencyButtonStyle,
      onPressed: () => _launchWhatsApp(number),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 24,
            width: 24,
            color: const Color.fromARGB(255, 145, 39, 120),
          ),
          const SizedBox(width: 8),
          Text(number),
        ],
      ),
    );
  }

  Future<void> _launchWhatsApp(String number) async {
    final Uri url = Uri.parse('https://wa.me/$number');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}