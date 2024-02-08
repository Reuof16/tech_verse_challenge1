import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tech_verse_challenge1/InfoPage.dart';
import 'WelcomPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 932,
                child: PageView(
                  controller: _controller,
                  children: [
                    WelcomePage(),
                    InfoPage(),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment(-0.8,0.88),
            child: SmoothPageIndicator(
                controller: _controller, count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor:  Color(0xff41124C),
                dotColor: Colors.deepPurple.shade200,
                dotWidth: 10,
                dotHeight: 10,
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
