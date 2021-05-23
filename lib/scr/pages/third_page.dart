import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _colorFondo(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottonnavigationbar(context),
    );
  }

  Widget _colorFondo() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 10.0)
          ])),
    );

    final cajaRosada = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          child: cajaRosada,
          top: -100,
        ),
      ],
    );
  }

  Widget _titulos() {
    final estitloTitulo = TextStyle(
        fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold);
    final estitlSuboTitulo = TextStyle(fontSize: 15, color: Colors.white);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify information',
              style: estitloTitulo,
            ),
            SizedBox(height: 10),
            Text(
              'This information is confidencial please read it with precaution, read it carefully',
              style: estitlSuboTitulo,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottonnavigationbar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30),
              title: Container())
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
          _crearBotonRedondeado(Colors.purple, Icons.directions_bus, 'Bus'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.brown, Icons.straighten, 'Start'),
          _crearBotonRedondeado(
              Colors.red, Icons.fire_extinguisher, 'Emergency'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.green, Icons.nature, 'Tree'),
          _crearBotonRedondeado(Colors.yellow, Icons.surround_sound, 'Sounds'),
        ]),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5),
              CircleAvatar(
                radius: 35,
                backgroundColor: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
