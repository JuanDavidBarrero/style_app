import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estilotitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estilosubtitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _miImagen(),
            _primeraFila(),
            _segundaFila(),
            _crarTexto(),
            _crarTexto(),
            _crarTexto(),
            _crarTexto(),
          ],
        ),
      ),
    );
  }

  Widget _miImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        height: 250.0,
        image: NetworkImage(
            'https://www.quecome.com/wp-content/uploads/2018/06/que-come-el-lobo-blanco-2.jpg'),
      ),
    );
  }

  Widget _primeraFila() {
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
                    'El mistico lobo blanco',
                    style: estilotitulo,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Es un buen chico',
                    style: estilosubtitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _segundaFila() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _crearAccion(Icons.call, 'CALL'),
          _crearAccion(Icons.near_me, 'ROUTE'),
          _crearAccion(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        )
      ],
    );
  }

  Widget _crarTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Hola a todos y todas como estan este es un texto de prueba para ver mi velocidad al escribir bajo este mismo metodo intento que mi documentos queden de manera mas profesional con respecto al de mis compañeros que escriben con solo con unos cuantos dedos, pero eso no importa porque eso es lo que me hace a mi destacar, yo soy Juan David Barrero  Lizcano y este mi documento totalmente escrito por mi.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
