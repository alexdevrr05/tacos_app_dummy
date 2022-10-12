import 'package:flutter/material.dart';
import 'package:tacos/tacos.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imageRuta:
          'https://images.unsplash.com/photo-1552332386-f8dd00dc2f85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80&#39;',
      producto: 'Tacos',
      nombre: 'El rencoroso',
      precio: '\$260.00',
      descripcionTitulo: 'Tacos de camaron',
      descripcionDetallada:
          'En esta taqueria los tacos estan preparados con tortilla recien hecha, encuentras (como su nombre lo dice) tacos de mar y de tierra; los de mar saben deliciosos, te recomendamos el camaron capeado, y de marlín; los de tierra, los de asada y de birria estan de rechupete. Tienen tambien muy buenas salsas.'),
  ImageDetails(
      imageRuta:
          'https://images.unsplash.com/photo-1611250188496-e966043a0629?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80&#39;',
      producto: 'Tacos',
      nombre: 'Especialidad del día',
      precio: '\$360.00',
      descripcionTitulo: 'Tacos de Asada',
      descripcionDetallada:
          'En esta taqueria los tacos estan preparados con tortilla recien hecha, encuentras (como su nombre lo dice) tacos de mar y de tierra; los de mar saben deliciosos, te recomendamos el camaron capeado, y de marlín; los de tierra, los de asada y de birria estan de rechupete. Tienen tambien muy buenas salsas.'),
  ImageDetails(
      imageRuta:
          'https://images.unsplash.com/photo-1613409385222-3d0decb6742a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80&#39;',
      producto: 'Tacos',
      nombre: 'Lo que todos quieren',
      precio: '\$460.00',
      descripcionTitulo: 'Tacos de Pollo',
      descripcionDetallada:
          'En esta taqueria los tacos estan preparados con tortilla recien hecha, encuentras (como su nombre lo dice) tacos de mar y de tierra; los de mar saben deliciosos, te recomendamos el camaron capeado, y de marlín; los de tierra, los de asada y de birria estan de rechupete. Tienen tambien muy buenas salsas.')
];

class Galery extends StatelessWidget {
  const Galery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40),
            Text(
              'Galería',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Tacos(
                                        imageRuta: _images[index].imageRuta,
                                        producto: _images[index].producto,
                                        nombre: _images[index].nombre,
                                        precio: _images[index].precio,
                                        descripcionTitulo:
                                            _images[index].descripcionTitulo,
                                        descripcionDetallada:
                                            _images[index].descripcionDetallada,
                                        // : _images[index].,
                                      ))),
                            );
                          },
                          child: Hero(
                            tag: 'logo',
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image:
                                        NetworkImage(_images[index].imageRuta),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        );
                      },
                      itemCount: _images.length,
                    )))
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imageRuta;
  final String producto;
  final String nombre;
  final String precio;
  final String descripcionTitulo;
  final String descripcionDetallada;
  ImageDetails({
    required this.imageRuta,
    required this.producto,
    required this.nombre,
    required this.precio,
    required this.descripcionTitulo,
    required this.descripcionDetallada,
  });
}
