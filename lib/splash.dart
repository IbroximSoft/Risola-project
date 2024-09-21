import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:risola_oqish_dasturi/main.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => const MyHomePage(title: 'Flutter Demo Home Page')));
    });
  }

  @override
  void disponse() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Lottie.asset(
              'animation/book_anim.json',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Risola o'qish dasturi",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
