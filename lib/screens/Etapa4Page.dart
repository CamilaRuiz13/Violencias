import 'package:flutter/material.dart';

class Etapa4page extends StatelessWidget {
  const Etapa4page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo que ocupa el 100% de la pantalla
          Positioned.fill(
            child: Image.asset(
              'assets/images/etapa4.jpg', // Cambia 'your_image.jpg' por el nombre de tu imagen
              fit: BoxFit.cover, // Ajusta la imagen para que cubra toda la pantalla
            ),
          ),
          // Aquí puedes agregar más contenido sobre la imagen si es necesario
        ],
      ),
    );
  }
}
