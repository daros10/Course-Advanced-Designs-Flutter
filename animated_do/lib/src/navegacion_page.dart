import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Notifications Page'),
        ),
        body: Container(),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BottomNavigation(),
      ),
      create: (_) => new _NotificationModel(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numero = Provider.of<_NotificationModel>(context).numero;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text('Bones'),
          icon: FaIcon(FontAwesomeIcons.bone),
        ),
        BottomNavigationBarItem(
          title: Text('Notifications'),
          //FaIcon(FontAwesomeIcons.bell)
          icon: Stack(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: BounceInDown(
                    from: 20,
                    animate: (numero > 0 ? true : false),
                    child: Bounce(
                      from: 10,
                      controller: (controller) =>
                          Provider.of<_NotificationModel>(context)
                              .bounceController = controller,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '$numero',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        BottomNavigationBarItem(
          title: Text('Dog'),
          icon: FaIcon(FontAwesomeIcons.dog),
        )
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.pink,
      child: FaIcon(FontAwesomeIcons.play),
      onPressed: () {
        int numero =
            Provider.of<_NotificationModel>(context, listen: false).numero;
        numero++;
        Provider.of<_NotificationModel>(context, listen: false).numero = numero;

        if (numero >= 2) {
          final controller =
              Provider.of<_NotificationModel>(context, listen: false)
                  .bounceController;
          controller.forward(from: 0.0);
        }
      },
    );
  }
}

class _NotificationModel extends ChangeNotifier {
  AnimationController _bounceController;

  int _numero = 0;

  int get numero => this._numero;

  set numero(int valor) {
    this._numero = valor;
    notifyListeners();
  }

  AnimationController get bounceController => this._bounceController;

  set bounceController(AnimationController controller) {
    this._bounceController = controller;
    notifyListeners();
  }
}
