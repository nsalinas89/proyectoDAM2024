import 'package:flutter/material.dart';

class OfertasPage extends StatelessWidget {
  const OfertasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ofertas',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.green,
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.grey]),
            ),
            child: Center(
              child: Text('Acá irán los productos en oferta.'),
            )));
  }
}
