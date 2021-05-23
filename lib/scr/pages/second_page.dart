import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _paginauno(),
        _paginados(),
      ],
    ));
  }

  /* Metodos que seran llamados para la aplicacion */

  Widget _paginauno() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _crearTextos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(38, 44, 58, 0.5),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/space.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTextos() {
    final estiloTexto = TextStyle(
        fontSize: 50.0, color: Colors.yellow, fontWeight: FontWeight.bold);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100),
          Text('Pressure:', style: estiloTexto),
          Text(
            'Temperature:',
            style: estiloTexto,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
/* pagina dos en desorrollo  */

  Widget _paginados() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(38, 44, 58, 1),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.red,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Bienvenidos',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
