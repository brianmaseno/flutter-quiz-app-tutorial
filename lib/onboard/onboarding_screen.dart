import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to Mamapesa App",
            body: "Manage your finances with ease.",
            image: const Center(
              child: Icon(Icons.account_balance_wallet, size: 175.0, color: Colors.blue),
            ),
            decoration: const PageDecoration(
              bodyFlex: 2,
              imageFlex: 4,
              bodyPadding: EdgeInsets.all(16.0),
              pageColor: Color.fromARGB(255, 197, 179, 179),
              titleTextStyle: 
              TextStyle(color: Colors.black, fontSize: 30.0),
            ),
          ),
          PageViewModel(
            title: "Track Your Spendiiiiiing",
            body: "Keep an eye on your expenses.",
            image: VideoPlayer(
                 VideoPlayerController.asset('assets/video2.mp4'),
            ),
            decoration: const PageDecoration(
              bodyFlex: 2,
              imageFlex: 4,
              bodyPadding: EdgeInsets.all(16.0),
              pageColor: Color.fromARGB(255, 197, 179, 179),
            ),
          ),
          PageViewModel(
            title: "Save for the Future",
            body: "Plan and save for your goals.",
            image: VideoPlayer(
                 VideoPlayerController.asset('assets/video2.mp4'),
            ),
            decoration: const PageDecoration(
              bodyFlex: 2,
              imageFlex: 4,
              bodyPadding: EdgeInsets.all(16.0),
              pageColor: Color.fromARGB(255, 197, 179, 179),
            ),
          ),
          PageViewModel(
            title: "Get Started Now",
            body: "Join us and take control of your financial future.",
            image: const Center(
              child: Icon(Icons.check_circle, size: 175.0, color: Colors.green),
            ),
            decoration: const PageDecoration(
              bodyFlex: 2,
              imageFlex: 4,
              bodyPadding: EdgeInsets.all(16.0),
              pageColor: Color.fromARGB(255, 197, 179, 179),
            ),
          ),
        ],
        onDone: () {
          Navigator.of(context).pushReplacementNamed('/login');
        },
        onSkip: () {
          Navigator.of(context).pushReplacementNamed('/login');
        },
        showSkipButton: true,
        skip: const Icon(Icons.skip_next, color: Colors.black),
        next: const Icon(Icons.arrow_forward, color: Colors.black),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      ),
    );
  }



}