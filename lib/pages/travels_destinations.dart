import 'package:flutter/material.dart';

class Destination {
  String nome;
  String foto;

  Destination(this.nome, this.foto);
}

class TravelsDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _text("Travels Destinations", 25, Colors.white, FontWeight.bold),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Destination> destinations = [
        Destination("Honeymoon", "assets/images/Honeymoon.jpeg"),
        Destination("Family Trip", "assets/images/FamilyTrip.jpeg"),
        Destination("Single Adventure", "assets/images/SingleAdventure.jpeg"),
        Destination("Couple Adventure", "assets/images/CoupleAdventure.jpeg"),
    ];


    return ListView.builder(
      itemExtent: 350,
      itemCount: destinations.length,
      itemBuilder: (BuildContext context, int index) {
        return _itemView(destinations, index);
      },
    );
  }

  _itemView(List<Destination> destinations, int index) {
        Destination dest = destinations[index];

        return GestureDetector(
          onTap: () {},
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Opacity(
                opacity: 0.35,
                child: _img(dest.foto),
              ),
              Container(
                alignment: Alignment.center,
                child: _text(dest.nome, 35, Color(0xFF303030), FontWeight.bold),
              ),
            ],
          )
        );
  }

  _img(String img) {
    return Image.asset(img, fit: BoxFit.cover);
  }

  _text(String text, double size, color, weight) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
