import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day18CustomPaint extends StatelessWidget {
  const Day18CustomPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Paint'),
        actions: [
          HelpIconButton(
              url:
                  'https://api.flutter.dev/flutter/rendering/CustomPainter-class.html')
        ],
      ),
      body: CustomPaint(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.black12,
            width: 200,
            height: 200,
            child: Text(
              'Custom Paint',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        painter: DemoCustomPainter(),
      ),
    );
  }
}

class DemoCustomPainter extends CustomPainter {
  Paint p = new Paint();

  @override
  void paint(Canvas canvas, Size size) {
    p.color = Colors.green;
    p.strokeWidth = 5;
    canvas.drawLine(
        Offset(100, 100), Offset(size.width - 100, size.height - 100), p);

    p.color = Colors.blueAccent;
    p.strokeWidth = 3;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, p);

    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width - 50, 50);
    path.lineTo(size.width - 100, 30);
    path.lineTo(size.width - 150, 50);
    path.lineTo(size.width - 200, 40);

    p.color = Colors.purple;
    p.style = PaintingStyle.fill;
    canvas.drawPath(path, p);

    final Rect rect = Offset.zero & size / 5;
    const RadialGradient gradient = RadialGradient(
      center: Alignment(0.7, -0.6),
      radius: 0.2,
      colors: <Color>[Color(0xFFFFFF00), Color(0xFF0099FF)],
      stops: <double>[0.4, 1.0],
    );
    canvas.drawRect(
      rect,
      Paint()..shader = gradient.createShader(rect),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
