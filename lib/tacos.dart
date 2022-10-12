import 'package:flutter/material.dart';

class Tacos extends StatelessWidget {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  const Tacos({
    Key? key,
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nombre)),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(imageRuta))),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ], // children Aligment
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(children: [
                Text(
                  nombre,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6.3),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  precio,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  descripcionTitulo,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6.3),
                ),
                Text(
                  descripcionDetallada,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.1,
                      height: 1.5),
                ),
              ]),
            ),
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.lime.shade900,
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  'Comprar',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ] // children
                ),
          )
        ], // children Column
      ),
    );
  }
}
