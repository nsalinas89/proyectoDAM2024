import 'package:flutter/material.dart';

class GuardadosPage extends StatefulWidget {
  const GuardadosPage({super.key});

  @override
  State<GuardadosPage> createState() => _GuardadosPageState();
}

class _GuardadosPageState extends State<GuardadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Productos Guardados',
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
                  'Acá irán los productos guardados como favoritos o deseados por el usuario y que pueda modificar si quiere crear listas personalizadas como tambien quitar productos'),
            )));
  }
}
