import 'package:flutter/material.dart';

class TravelsDiary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _text("Travel Diary", 30, Colors.white, FontWeight.bold),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: RaisedButton(
        color: Color(0xFF10C5AF),
        child: Container(
          width: 140,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _text("Novo Registro", 20, Colors.white, FontWeight.bold),
              Icon(Icons.add, size: 25, color: Colors.white),
            ],
          ),
        ),
        onPressed: () {}
      ),
    );
  }

  _text(String text, double size, color, font) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: font,
      ),
    );
  }
}
