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