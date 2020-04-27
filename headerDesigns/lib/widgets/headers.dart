import 'package:flutter/material.dart';

class HederCuadradoCircular extends StatelessWidget {
  const HederCuadradoCircular({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(25.0), bottomStart: Radius.circular(25.0)),
        color: Color(0xff615AAB),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint(); // es mi lapiz

    // Propiedades de mi lapiz
    lapiz.color = Color(0xff615AAB);
    //. stroke solo crear la figura con lineas .fill la crea con un relleno
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    //Para poder moverlo
    final path = new Path();

    // Dibujar con el lapiz y el path
    // Por defect el path esta en la c(0,0)
    path.moveTo(0, size.height * 0.35); //con este solo muevo el lapiz
    path.lineTo(size.width, size.height * 0.30); // dibuja una linea
    path.lineTo(size.width, 0); // dibuja una linea
    path.lineTo(0, 0);

    // con esta instancia le digo que empiece a dibujar en el phone
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint(); // es mi lapiz

    // Propiedades de mi lapiz
    lapiz.color = Color(0xff615AAB);
    //. stroke solo crear la figura con lineas .fill la crea con un relleno
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    //Para poder moverlo
    final path = new Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // con esta instancia le digo que empiece a dibujar en el phone
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  const HeaderPico({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint(); // es mi lapiz

    // Propiedades de mi lapiz
    lapiz.color = Color(0xff615AAB);
    //. stroke solo crear la figura con lineas .fill la crea con un relleno
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    //Para poder moverlo
    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    // con esta instancia le digo que empiece a dibujar en el phone
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint(); // es mi lapiz

    // Propiedades de mi lapiz
    lapiz.color = Color(0xff615AAB);
    //. stroke solo crear la figura con lineas .fill la crea con un relleno
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    //Para poder moverlo
    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    // con esta instancia le digo que empiece a dibujar en el phone
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaves extends StatelessWidget {
  const HeaderWaves({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavesPainter(),
      ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint(); // es mi lapiz

    // Propiedades de mi lapiz
    lapiz.color = Color(0xff615AAB);
    //. stroke solo crear la figura con lineas .fill la crea con un relleno
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    //Para poder moverlo
    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    //quadraticBezierTo(puntodeInflexionEnX, puntoDeInflexionEnY, ptoDeInicioEnX, ptoFinY)
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
