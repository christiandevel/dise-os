import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
        _crearImagen(),
        _crearTitulo(),
        _acciones(),
        _crearTexto(),
      ],
          ),
          
      
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            height: 200.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
    final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puente',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Un lago en Alemania', style: estiloSubtitulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, 'Call'),
        _crearAccion(Icons.near_me, 'Route'),
        _crearAccion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Tempor amet aliqua excepteur proident aliqua irure aliqua amet exercitation enim cillum. Anim occaecat ea ad sint ipsum in proident aliquip elit do nisi. Minim eiusmod officia dolor elit ad consectetur commodo excepteur reprehenderit sint elit excepteur sunt. Ullamco pariatur tempor laboris minim proident ullamco excepteur officia commodo. Nostrud in eu magna laboris eu amet ipsum pariatur est pariatur labore officia.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
