import 'dart:math';
import 'package:flutter/material.dart';

class SnowfallBackground extends StatefulWidget {
  @override
  _SnowfallBackgroundState createState() => _SnowfallBackgroundState();
}

class _SnowfallBackgroundState extends State<SnowfallBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Snowflake> _snowflakes = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    )..repeat();

    // 랜덤 눈송이 생성
    for (int i = 0; i < 100; i++) {
      _snowflakes.add(Snowflake.random());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: SnowfallPainter(_snowflakes, _controller.value),
        );
      },
    );
  }
}

class Snowflake {
  double x;
  double y;
  double radius;
  double speed;

  Snowflake(
      {required this.x,
      required this.y,
      required this.radius,
      required this.speed});

  // 랜덤 눈송이 생성
  static Snowflake random() {
    final random = Random();
    return Snowflake(
      x: random.nextDouble() * 400, // 화면 가로 크기
      y: random.nextDouble() * 800, // 화면 세로 크기
      radius: random.nextDouble() * 3 + 1, // 눈송이 크기
      speed: random.nextDouble() * 2 + 1, // 눈송이 속도
    );
  }

  void update(double progress) {
    y += speed * progress * 10;
    if (y > 800) {
      // 화면 끝에 도달하면 다시 위로
      y = 0;
    }
  }
}

class SnowfallPainter extends CustomPainter {
  final List<Snowflake> snowflakes;
  final double progress;

  SnowfallPainter(this.snowflakes, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;
    for (var snowflake in snowflakes) {
      snowflake.update(progress);
      canvas.drawCircle(
          Offset(snowflake.x, snowflake.y), snowflake.radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
