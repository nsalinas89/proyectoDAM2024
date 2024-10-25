import 'package:flutter/material.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Aquí se mostrarán los productos agregados al carrito'),
      ),
    );
  }
}
