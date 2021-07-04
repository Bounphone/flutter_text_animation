import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextAnimation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextAnimation extends StatefulWidget {
  const TextAnimation({Key? key}) : super(key: key);

  @override
  _TextAnimationState createState() => _TextAnimationState();
}

var textstyle =
    TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold);

class _TextAnimationState extends State<TextAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Animation'),
        centerTitle: true,
      ),
      body: Center(
        child: _flickerAnimation(),
        // child: AnimatedTextKit(
        //   animatedTexts: [
        //     TyperAnimatedText('I am developer',
        //         textStyle: textstyle, speed: Duration(milliseconds: 100)),
        //   ],
        //   repeatForever: true,
        // ),
      ),
    );
  }
}

// Rotate
AnimatedTextKit _rotateAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      RotateAnimatedText('I am developer', textStyle: textstyle),
      RotateAnimatedText('You are devloper', textStyle: textstyle),
      RotateAnimatedText('We are developer', textStyle: textstyle)
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 100),
  );
}

// Fade
AnimatedTextKit _fadeAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      FadeAnimatedText('You', textStyle: textstyle),
      FadeAnimatedText('You are a', textStyle: textstyle),
      FadeAnimatedText('You are a handsome man', textStyle: textstyle),
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 100),
  );
}

// Typer

AnimatedTextKit _typerAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      TyperAnimatedText('I love you',
          textStyle: textstyle, speed: Duration(milliseconds: 100))
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 500),
  );
}

// Typewriter

AnimatedTextKit _typeWriterAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      TypewriterAnimatedText('You are awesome',
          textStyle: textstyle, speed: Duration(milliseconds: 100))
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 500),
  );
}

// Scale

AnimatedTextKit _scaleAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      ScaleAnimatedText(
        'Never',
        textStyle: textstyle,
      ),
      ScaleAnimatedText(
        'Stop',
        textStyle: textstyle,
      ),
      ScaleAnimatedText(
        'Learning',
        textStyle: textstyle,
      ),
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 500),
  );
}

// Colorize

AnimatedTextKit _colorizeAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      ColorizeAnimatedText("Medium",
          textStyle: textstyle,
          colors: [Colors.purple, Colors.yellow, Colors.red],
          speed: Duration(milliseconds: 300))
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 500),
  );
}

//TextLiquidFill

TextLiquidFill _textLiquidFillAnimation() {
  return TextLiquidFill(
    text: 'WATER',
    waveColor: Colors.yellow,
    boxBackgroundColor: Colors.blue,
    textStyle: TextStyle(
      fontSize: 80.0,
      fontWeight: FontWeight.bold,
    ),
    boxHeight: 1000,
  );
}

// wavy

AnimatedTextKit _wavyAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      WavyAnimatedText("We are programmer", textStyle: textstyle)
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 500),
  );
}

// flicker

AnimatedTextKit _flickerAnimation() {
  return AnimatedTextKit(
    animatedTexts: [
      FlickerAnimatedText("Animated", textStyle: textstyle),
      FlickerAnimatedText("text", textStyle: textstyle),
      FlickerAnimatedText("kit", textStyle: textstyle),
    ],
    repeatForever: true,
    pause: Duration(milliseconds: 500),
  );
}

// olay dev : Thank you //
