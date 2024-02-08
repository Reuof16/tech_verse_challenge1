import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(466),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/backui.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment(-0.9,0.70),
            child: Text(
              'Welcome to ',
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff41124C),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Kalam'
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9,0.80),
            child: Text(
              'Reuofs space',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,

                  fontFamily: 'Pacifico'
              ),
            ),
          ),
        ],
      ),
    );
  }
}




