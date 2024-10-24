import 'package:flutter/material.dart';

class BarraBusqueda extends StatelessWidget {
  const BarraBusqueda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.search_rounded, size: 40, color: Colors.black),
              border: InputBorder.none,
              hintText: 'Ingrese el nombre de un juego a buscar'),
        ));
  }
}
