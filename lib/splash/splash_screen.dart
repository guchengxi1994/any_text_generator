import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:any_text_generator/global/global.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width / 16;

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue, // 渐变起始颜色
            Colors.purple, // 渐变结束颜色
          ],
        ),
      ),
      child: Stack(
        children: [
          SizedBox.expand(
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '这是一个',
                    style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: 'xing',
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: Global.settings.youAreA
                        .map((v) => RotateAnimatedText(v,
                            textStyle: TextStyle(
                              fontSize: fontSize,
                              fontFamily: 'xing',
                            )))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: FittedBox(
                    child: AnimatedTextKit(animatedTexts: [
                      ColorizeAnimatedText(
                        'Press to start',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ], isRepeatingAnimation: true, repeatForever: true),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

const colorizeColors = [
  Colors.green,
  Colors.deepOrange,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'xing',
);
