import 'package:flutter/material.dart';

class ZapatoDescripcion extends StatelessWidget {
  final String titulo;
  final String descripcion;

  ZapatoDescripcion({@required this.titulo, @required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.titulo,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Text(
              this.descripcion,
              style: TextStyle(color: Colors.black54, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}
