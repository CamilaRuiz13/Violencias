import 'package:flutter/material.dart';
import 'package:violencias/screens/home.dart'; 

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Navegar a la pantalla principal después de 3 segundos
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.jpg'), // Cambia por tu imagen
            fit: BoxFit.cover, // Asegúrate de que la imagen cubra toda la pantalla
          ),
        ),
      ),
    );
  }
}
