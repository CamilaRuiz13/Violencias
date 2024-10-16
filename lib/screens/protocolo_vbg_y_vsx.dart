import 'package:flutter/material.dart';

class ProtocoloVbgYVsx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/purple-texture.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(0, 225, 0, 255).withOpacity(0.9),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        'assets/images/Mujer2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'CONOCE EL PROTOCOLO COMPLETO AQUÍ:',
                        style: TextStyle(color: Colors.yellow, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 5),
                    _buildStageButton(context, 'ETAPA 1: DETECCIÓN'),
                    _buildStageButton(context, 'ETAPA 2: ATENCIÓN INICIAL'),
                    _buildStageButton(context, 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL'),
                    _buildStageButton(context, 'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO'),
                    _buildStageButton(context, 'ETAPA 5: REMISIÓN'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildStageButton(BuildContext context, String text) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: ElevatedButton(
      onPressed: () {
        String route;
        switch (text) {
          case 'ETAPA 1: DETECCIÓN':
            route = '/etapa1';
            break;
          case 'ETAPA 2: ATENCIÓN INICIAL':
            route = '/etapa2';
            break;
          case 'ETAPA 3:\nATENCIÓN PRIORITARIA EN SALUD FÍSICA Y MENTAL':
            route = '/etapa3';
            break;
          case 'ETAPA 4:\nORIENTACIÓN, ASESORÍA Y ACOMPAÑAMIENTO JURÍDICO':
            route = '/etapa4';
            break;
          case 'ETAPA 5: REMISIÓN':
            route = '/etapa5';
            break;
          default:
            return;
        }
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple[800],
        padding: EdgeInsets.symmetric(vertical: 16),
        minimumSize: Size(double.infinity, 50),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontFamily: 'AmsiPro-Ultra',
        ),
      ),
    ),
  );
}
}



