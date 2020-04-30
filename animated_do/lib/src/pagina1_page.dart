import 'package:animate_do/animate_do.dart';
import 'package:animated_do/src/navegacion_page.dart';
import 'package:animated_do/src/twitter_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated_do',
        ),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => TwitterPage()));
            },
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Pagina1()));
            },
          ),
        ],
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NavegacionPage()));
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElasticIn(
            delay: Duration(milliseconds: 1100),
            child: Icon(
              Icons.new_releases,
              color: Colors.blue,
              size: 40.0,
            ),
          ),
          FadeInDown(
            delay: Duration(milliseconds: 200),
            child: Text(
              'Titulo',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          FadeInDown(
            delay: Duration(milliseconds: 800),
            child: Text(
              'Soy un titulo pequeño',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          FadeInLeft(
            delay: Duration(milliseconds: 900),
            child: Container(
              width: 220,
              height: 2,
              color: Colors.blue,
            ),
          ),
        ],
      )),
    );
  }
}
