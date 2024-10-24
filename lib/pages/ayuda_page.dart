import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AyudaPage extends StatefulWidget {
  const AyudaPage({super.key});

  @override
  State<AyudaPage> createState() => _AyudaPageState();
}

class _AyudaPageState extends State<AyudaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ayuda',
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
                      MdiIcons.accountGroup,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Quienes Somos'),
                  ),
                  ListTile(
                    leading: Icon(
                      MdiIcons.cashRegister,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Cómo comprar'),
                  ),
                  ListTile(
                    leading: Icon(
                      MdiIcons.cashRefund,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Devoluciones y garantías'),
                  ),
                  ListTile(
                    leading: Icon(
                      MdiIcons.package,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Despachos'),
                  ),
                  ListTile(
                    leading: Icon(
                      MdiIcons.mailbox,
                      color: Colors.grey,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text('Contáctanos'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
