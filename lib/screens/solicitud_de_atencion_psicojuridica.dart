import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SolicitudDeAtencionPsicojuridica extends StatefulWidget {
  const SolicitudDeAtencionPsicojuridica({super.key});

  @override
  _SolicitudDeAtencionPsicojuridicaState createState() => _SolicitudDeAtencionPsicojuridicaState();
}

class _SolicitudDeAtencionPsicojuridicaState extends State<SolicitudDeAtencionPsicojuridica> {
  final _formKey = GlobalKey<FormState>(); // Clave para el formulario
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _tipoDocController = TextEditingController();
  final TextEditingController _numeroDocController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _municipioController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _facultadController = TextEditingController();
  final TextEditingController _programaController = TextEditingController();
  final TextEditingController _hechosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Obtener el alto total de la pantalla
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Asignando la clave al formulario
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen que se ajusta al 9% de la altura de la pantalla
                SizedBox(
                  width: double.infinity, // La imagen ocupa todo el ancho disponible
                  height: screenHeight * 0.09, // La imagen ocupa el 9% de la altura total de la pantalla
                  child: Image.asset(
                    'assets/icons/formularioimagen.png', // Ruta de la imagen
                    fit: BoxFit.cover, // Ajusta la imagen para cubrir el espacio manteniendo la relación de aspecto
                  ),
                ),
                const SizedBox(height: 20), // Espacio entre la imagen y los campos

                _buildTextField(_nombreController, 'Nombre', TextInputType.name),
                _buildTextField(_tipoDocController, 'Tipo de documento', TextInputType.text),
                _buildTextField(_numeroDocController, 'Número de documento', TextInputType.number),
                _buildTextField(_telefonoController, 'Teléfono', TextInputType.phone),
                _buildTextField(_municipioController, 'Municipio de residencia', TextInputType.text),
                _buildTextField(_correoController, 'Correo electrónico', TextInputType.emailAddress),
                _buildTextField(_facultadController, 'Facultad', TextInputType.text),
                _buildTextField(_programaController, 'Programa', TextInputType.text),
                _buildTextField(_hechosController, 'Hechos', TextInputType.multiline, maxLines: 5),

                // Texto informativo
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'El envío de este formulario no es una denuncia formal, '
                    'solo es un enlace para el acompañamiento psicojurídico solicitado.',
                    style: TextStyle(
                      color: Colors.black, // Color del texto
                      fontFamily: 'AmsiPro-Ultra', // Tipo de letra
                      fontSize: 14, // Tamaño de letra
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _sendEmail, // Llamar a la función para enviar el correo
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[800],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Enviar Solicitud',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'AmsiPro-Ultra', // Manteniendo la fuente AmsiPro-Ultra
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, TextInputType keyboardType, {int? maxLines}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller, // Asignando el controlador
        keyboardType: keyboardType,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor, completa este campo';
          }
          return null;
        },
      ),
    );
  }

  void _sendEmail() async {
    if (_formKey.currentState?.validate() ?? false) { // Validar el formulario
      String body = '''
      Nombre: ${_nombreController.text}
      Tipo de documento: ${_tipoDocController.text}
      Número de documento: ${_numeroDocController.text}
      Teléfono: ${_telefonoController.text}
      Municipio de residencia: ${_municipioController.text}
      Correo electrónico: ${_correoController.text}
      Facultad: ${_facultadController.text}
      Programa: ${_programaController.text}
      Hechos: ${_hechosController.text}
      ''';

      const emailAddress = 'atencionaviolenciasbasadasengenero@elpoli.edu.co';
      const subject = 'Solicitud de Atención Psicojurídica';
      
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: emailAddress,
        query: 'subject=$subject&body=$body', // Incluye el asunto y el cuerpo
      );

      try {
        await launch(emailLaunchUri.toString());
      } catch (e) {
        print('Error al intentar abrir el correo: $e');
      }
    }
  }
}
