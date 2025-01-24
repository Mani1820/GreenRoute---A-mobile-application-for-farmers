import 'package:flutter/material.dart';
import 'package:green_root/Screens/onboarding/signup_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreens extends StatefulWidget {
  const IntroductionScreens({super.key});

  @override
  State<IntroductionScreens> createState() => _IntroductionScreensState();
}

class _IntroductionScreensState extends State<IntroductionScreens> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  //final String _status = 'pending';

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,
      showNextButton: true,
      showBackButton: true,
      back: Icon(Icons.arrow_back_ios),
      done: Text('Get started'),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (ctx) => SignupScreen(),
          ),
        );
      },
      next: Text('next'),
      dotsDecorator: DotsDecorator(
        size: const Size(10, 10),
        color: const Color.fromARGB(255, 137, 143, 140),
        activeSize: Size(20, 10),
        activeColor: Colors.tealAccent,
      ),
      pages: [
        PageViewModel(
            title: 'Green Root',
            body: 'Welcome to Green Root',
            //image: Image.asset('assets/images/food.jpg'),
            decoration: PageDecoration(
                pageColor: const Color.fromRGBO(9, 215, 160, 0.395))),
        PageViewModel(
          title: 'Green Root',
          body: 'Welcome to Green Root',
        ),
      ],
    );
  }
}
