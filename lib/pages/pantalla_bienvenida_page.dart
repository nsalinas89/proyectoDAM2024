import 'package:app_videojuegos/pages/ayuda_page.dart';
import 'package:app_videojuegos/pages/buscar_page.dart';
import 'package:app_videojuegos/pages/configuracion_page.dart';
import 'package:app_videojuegos/pages/guardados_page.dart';
import 'package:app_videojuegos/pages/inicio_page.dart';
import 'package:app_videojuegos/pages/notificaciones_page.dart';
import 'package:app_videojuegos/pages/ofertas_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PantallaBienvenidaPage extends StatelessWidget {
  const PantallaBienvenidaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tienda de Videojuegos el Jueguín',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
      ),
      //body
      body: Center(
        child: Text(
            'Aca irá el mensaje de bienvenida al usuario como tambien van los productos en ventas por lo que vi en el diseño del figma'),
      ),
      //drawer
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/user.png')),
                    border: Border.all(width: 2.0)),
              ),
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Acá va el nombre del usuario',
                      style: TextStyle(fontSize: 17))),
            ],
          )),
          ListTile(
            title: Text('Inicio'),
            leading: Icon(MdiIcons.home),
            onTap: () => _navegar(context, 1),
          ),
          Divider(),
          ListTile(
            title: Text('Buscar'),
            leading: Icon(MdiIcons.searchWeb),
            onTap: () => _navegar(context, 2),
          ),
          Divider(),
          ListTile(
            title: Text('Notificaciones'),
            leading: Icon(MdiIcons.bellAlert),
            onTap: () => _navegar(context, 3),
          ),
          Divider(),
          ListTile(
            title: Text('Guardados'),
            leading: Icon(Icons.save),
            onTap: () => _navegar(context, 4),
          ),
          Divider(),
          ListTile(
            title: Text('Ofertas'),
            leading: Icon(MdiIcons.offer),
            onTap: () => _navegar(context, 5),
          ),
          Divider(),
          ListTile(
            title: Text('Configuración'),
            leading: Icon(MdiIcons.accountSettings),
            onTap: () => _navegar(context, 6),
          ),
          Divider(),
          ListTile(
            title: Text('Ayuda'),
            leading: Icon(MdiIcons.help),
            onTap: () => _navegar(context, 7),
          ),
          Divider(),
          ListTile(
            title: Text('Cerrar'),
            leading: Icon(MdiIcons.close),
            onTap: () => Navigator.pop(context),
          ),
          Divider()
        ],
      )),
    );
  }

  void _navegar(BuildContext context, int pagina) {
    List<Widget> paginas = [
      InicioPage(),
      BuscarPage(),
      NotificacionesPage(),
      GuardadosPage(),
      OfertasPage(),
      ConfiguracionPage(),
      AyudaPage(),
    ];

    final route = MaterialPageRoute(builder: (context) {
      return paginas[pagina - 1];
    });
    Navigator.pop(context);
    Navigator.push(context, route);
  }
}
