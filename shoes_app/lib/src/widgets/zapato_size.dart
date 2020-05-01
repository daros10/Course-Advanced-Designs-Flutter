import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: Container(
        width: double.infinity,
        height: 430.0,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: <Widget>[
            _ZapatoConSombra(),
            _ZapatoTallas(),
          ],
        ),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _TallaZapatoCaja(7),
          _TallaZapatoCaja(7.5),
          _TallaZapatoCaja(8),
          _TallaZapatoCaja(8.5),
          _TallaZapatoCaja(9),
          _TallaZapatoCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  final double tallaZapato;

  const _TallaZapatoCaja(this.tallaZapato);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: this.tallaZapato == 9 ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (this.tallaZapato == 9)
              BoxShadow(
                color: Color(0xffF1A23A),
                blurRadius: 10.0,
                offset: Offset(6, 8),
              )
          ]),
      child: Text(
        '${tallaZapato.toString().replaceAll('.0', '')}',
        style: TextStyle(
          color: this.tallaZapato == 9 ? Colors.white : Color(0xffF1A23A),
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20.0,
            right: 0.0,
            child: SombraZapato(),
          ),
          Image(image: AssetImage('assets/img/azul.png')),
        ],
      ),
    );
  }
}

class SombraZapato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Color(0xffEAA14E),
                blurRadius: 40.0,
              )
            ]),
      ),
    );
  }
}
