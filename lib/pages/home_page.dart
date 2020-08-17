import 'package:flutter/material.dart';

import 'package:Going/pages/travels_destinations.dart';
import 'package:Going/pages/travels_price.dart';
import 'package:Going/pages/travels_diary.dart';

import 'package:Going/utils/nav.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Going",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'RobotoBold',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.card_travel, size: 30),
            color: Colors.white,
            onPressed: (){},
          ),  
        ],
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: _text("Places of the Week", 22, Color(0xFF10C5AF)),
              ), 
              
              Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                child: _text("see more >>", 15, Color(0xFF10C5AF)),
              ), 
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: PageView(
              children: <Widget>[
                _img("assets/images/Grande-Barreira.jpg", "Grande Barreira de Corais - AUS"),
                _img("assets/images/Paris.jpg", "Paris - FRA"),
                _img("assets/images/Bora-Bora.jpeg", "Bora Bora - ALG"),
              ],
            ),
          ),
          _dreamList(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 15, left: 10, bottom: 5),
            child: _text("Functions", 22, Color(0xFF10C5AF)),
          ),
          _functionsList(context),
        ],
      ),
    );
  }

  _dreamList() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: _text("Dream List", 22, Color(0xFF10C5AF)),
            ), 
          
            Container(
              margin: EdgeInsets.only(top: 10, right: 10),
              child: _text("see more >>", 15, Color(0xFF10C5AF)),
            ), 
          ],
        ),
        _listElement("Malibu's Beach", Icons.beach_access),
        _listElement("New York", Icons.location_city),
      ],
    );
  }

  _listElement(String place_name, IconData icon) {
   return Container(
      height: 80,
      width: double.infinity,
      margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        color: Color(0xFF10C5AF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  place_name,
                  style: TextStyle(fontSize: 18, color: Color(0xFF022486), fontWeight: FontWeight.w600),
                ), 
                Text(
                  "Fazer uma viagem em família em janeiro",
                  style: TextStyle(fontSize: 15, color: Color(0xFF022486)),
                ), 
              ],
            ),
          ),
          Icon(icon, size: 50.0, color: Color(0xFF022486)),
        ],
      ),
    ); 
  }

  _functionsList(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _function("Travel Destinations", Icons.flight_takeoff, TravelsDestinations(), context),
        _function("Best Prices", Icons.attach_money, TravelsPrice(), context),
        _function("Travel Diary", Icons.art_track, TravelsDiary(), context),
      ],
    );

  }

  _function(String func_name, IconData icon, Widget destinations, BuildContext context) {
    return GestureDetector(
      onTap: () {
        push(context, destinations);
      },
      child: Container(
        width: 120,
        height: 120,
        margin: EdgeInsets.only(top:5),
        
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Color(0xFF10C5AF),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              func_name,
              style: TextStyle(
                fontFamily: 'RobotoBold',
                fontSize: 15,
                color: Color(0xFFEF6421),
              ),
            ),
            Icon(icon, size: 50.0, color: Color(0xFFEF6421)),
          ],
        )
      )
    );
  }

  _text(String text, double size, color) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'RobotoBold',
        color: color,
      )
    );
  }

  _img(String image, String location) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          width: double.infinity,
          height: 280,
          fit: BoxFit.cover,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(location, style: TextStyle(color: Color(0xFF505050), fontSize: 15)),
        ),
      ],
    );
  }
}
