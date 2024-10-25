import 'package:image_card/image_card.dart';
import 'carrito_page.dart';
import 'package:flutter/material.dart';
// import 'package:challenges_flutter/challenges_flutter.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Inicio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), // Icono de carrito
            onPressed: () {
              // Navega a la página del carrito
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CarritoPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.grey],
          ),
        ),
        child: Column(
          children: [
            _buildHorizontalCardRow(context, 1), // Primera fila de tarjetas
            _buildHorizontalCardRow(context, 2), // Segunda fila de tarjetas
          ],
        ),
      ),
    );
  }

  // Función que construye las tarjetas de forma horizontal
  Widget _buildHorizontalCardRow(BuildContext context, int rowNumber) {
    return Container(
      height: 220, // Altura de cada fila
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Desplazamiento horizontal
        padding: EdgeInsets.all(10.0),
        itemCount: 5, // Cantidad de tarjetas por fila
        itemBuilder: (context, index) {
          return Container(
            width: 160, // Ancho de cada tarjeta
            margin: EdgeInsets.only(right: 10.0), // Espacio entre tarjetas
            child: FillImageCard(
              heightImage: 100, // Ajusta la altura de la imagen
              imageProvider: AssetImage('assets/mockup.png'),
              tags: [
                _tag('Category $rowNumber-$index', () {}),
                _tag('Product $index', () {}),
              ],
              title: _title('Product Title $rowNumber-$index'),
              description: _content('Description $index'),
            ),
          );
        },
      ),
    );
  }

  // Etiqueta que se muestra sobre las tarjetas
  Widget _tag(String label, Function onPressed) {
    return GestureDetector(
      onTap: onPressed as void Function()?,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  // Título dentro de la tarjeta
  Widget _title(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // Descripción dentro de la tarjeta
  Widget _content(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 10.0,
      ),
    );
  }
}
