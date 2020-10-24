import 'package:flutter/material.dart';

class SquareHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 300,
      color: Color(0xff515AAB),
      
    );
  }
}

class BorderRadiusHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff515AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50)
        )
      ),

    );
  }
}

class DiagonalHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _DiagonalHeaderPaint(),
      ),
      
    );
  }
}

class _DiagonalHeaderPaint extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = new Paint();
    final path  = new Path();

    // Properties
    paint.color = Color(0xff515AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    // Draw with the path and pencil
    path.moveTo( 0, size.height * 0.35 );
    path.lineTo(size.width, size.height * 0.30 );
    path.lineTo(size.width, 0 );
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class TriangleHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _TriangleHeaderPainter(),
      ),
      
    );
  }
}

class _TriangleHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = new Paint();
    final path  = new Path();

    // Properties
    paint.color = Color(0xff515AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    // Draw with the path and pencil
    path.lineTo( size.width * 1, size.height * 1 );
    path.lineTo( size.width * 1, 0 );
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderPico extends StatelessWidget {
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

    final paint = new Paint();
    final path  = new Path();

    // Properties
    paint.color = Color(0xff515AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    // Draw with the path and pencil
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.50, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderCurvo extends StatelessWidget {
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

    final paint = new Paint();
    final path  = new Path();

    // Properties
    paint.color = Color(0xff515AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    // Draw with the path and pencil
    path.lineTo(0, size.height * 0.25);
    // path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.40, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
      
    );
  }
}

class _HeaderWavePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = new Paint();
    final path  = new Path();

    // Properties
    paint.color = Color(0xff515AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    // Draw with the path and pencil
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.50, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
      
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = new Rect.fromCircle(
      center: Offset(0.0, 55.0),
      radius: 180
    );

    final Gradient gradient = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA)
      ],
      stops: [
        0.2,
        0.5,
        1.0
      ]
    );

    final paint = new Paint()..shader = gradient.createShader(rect);
    final path  = new Path();

    // Properties
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    // Draw with the path and pencil
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.50, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}