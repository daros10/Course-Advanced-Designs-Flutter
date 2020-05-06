import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/model/zapato_model.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ZapatoDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: 'zapato-1',
                  child: ZapatoSizePreview(fullScreen: true),
                ),
                Positioned(
                  left: 10,
                  top: 30,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.chevron_left,
                      size: 45,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    highlightElevation: 0,
                  ),
                )
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5.0),
                  ZapatoDescripcion(
                    titulo: 'Nike Max Air 720',
                    descripcion:
                        'The Nike Air Max 720 goes bigger than ever before with Nike’s tallest Air unit yet, which offers more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                  ),
                  _MontoBuyNow(),
                  _ColoresYmas(),
                  _BotonesLikeCartSettings()
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class _BotonesLikeCartSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _BotonesSombreados(Icon(
            Icons.star,
            color: Colors.red,
            size: 25.0,
          )),
          _BotonesSombreados(Icon(
            Icons.add_shopping_cart,
            color: Colors.grey.withOpacity(0.4),
            size: 25.0,
          )),
          _BotonesSombreados(Icon(
            Icons.settings,
            color: Colors.grey.withOpacity(0.4),
            size: 25.0,
          )),
        ],
      ),
    );
  }
}

class _BotonesSombreados extends StatelessWidget {
  final Icon icon;

  const _BotonesSombreados(
    this.icon,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.icon,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
    );
  }
}

class _ColoresYmas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Stack(
            children: <Widget>[
              Positioned(
                  left: 90,
                  child: _BotonColor(
                      Color(0xffC6D642), 4, 'assets/img/verde.png')),
              Positioned(
                  left: 60,
                  child: _BotonColor(
                      Color(0xffFFAD29), 3, 'assets/img/amarillo.png')),
              Positioned(
                  left: 30,
                  child:
                      _BotonColor(Color(0xff2099F1), 2, 'assets/img/azul.png')),
              _BotonColor(Color(0xff364D56), 1, 'assets/img/negro.png'),
            ],
          )),
          BotoNaranja(
              texto: 'More related items',
              alto: 30,
              ancho: 170,
              color: Color(0xffFFC675))
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String urlImage;

  _BotonColor(this.color, this.index, this.urlImage);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final zapatoModel = Provider.of<ZapatoModel>(context, listen: false);
          zapatoModel.assetImage = this.urlImage;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
        child: Row(
          children: <Widget>[
            Text(
              '\$180.0',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Bounce(
              delay: Duration(seconds: 1),
              from: 8,
              child: BotoNaranja(
                texto: 'Buy Now',
                alto: 40,
                ancho: 120,
              ),
            )
          ],
        ),
      ),
    );
  }
}
