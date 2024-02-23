import 'package:flutter/material.dart';

class MusicAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MusicAnimation(),
          ],
        ),
      ),
    );
  }
}

class MusicAnimation extends StatefulWidget {
  @override
  _MusicAnimationState createState() => _MusicAnimationState();
}

class _MusicAnimationState extends State<MusicAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MusicLetter(
          letter: 'THE',
          scaleAnimation: _scaleAnimation,
        ),
        SizedBox(width: 10),
        MusicLetter(
          letter: 'APP',
          scaleAnimation: _scaleAnimation,
        ),
        SizedBox(width: 10),
        MusicLetter(
          letter: 'WILL',
          scaleAnimation: _scaleAnimation,
        ),
        SizedBox(width: 20),
        MusicLetter(
          letter: 'CONTIUNE',
          scaleAnimation: _scaleAnimation,
        ),
        SizedBox(width: 10),
        MusicLetter(
          letter: 'IT IS GOOD',
          scaleAnimation: _scaleAnimation,
        ),
      ],
    );
  }
}

class MusicLetter extends StatelessWidget {
  final String letter;
  final Animation<double> scaleAnimation;

  const MusicLetter({
    required this.letter,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: Text(
        letter,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
