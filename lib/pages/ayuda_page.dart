import 'package:flutter/material.dart';

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
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.grey]),
            ),
            child: Center(
              child: Text(
                  'Acá va todo lo relacionado a dudas y respuestas acerca de la app y de como hacer diversas cosas como comprar, guardar en favoritos y cuanto más'),
            )));
  }
}
