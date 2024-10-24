import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ConfiguracionPage extends StatefulWidget {
  const ConfiguracionPage({super.key});

  @override
  State<ConfiguracionPage> createState() => _ConfiguracionPageState();
}

class _ConfiguracionPageState extends State<ConfiguracionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Configuración',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.green,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.white], // Gradiente de colores
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(16), // Margen alrededor de la lista
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    Colors.white.withOpacity(0.8), // Fondo blanco con opacidad
              ),
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Cuenta'),
                    subtitle: Text('Configuración de la cuenta'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.security,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Privacidad'),
                    subtitle: Text('Opciones de seguridad y privacidad'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Notificaciones'),
                    subtitle: Text('Preferencias de notificaciones'),
                  ),
                  ListTile(
                    leading: Icon(
                      MdiIcons.history,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Historial'),
                    subtitle: Text('Compras realizadas'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Idioma'),
                    subtitle: Text('Selecciona el idioma de la app'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.palette,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Temas'),
                    subtitle: Text('Personaliza los temas visuales'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help_outline,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Ayuda'),
                    subtitle: Text('Centro de ayuda y soporte'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
