import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd0c4f2).withOpacity(0.6),
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily:'Pacifico',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff41124C).withOpacity(0.8),
        leading: Icon(Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                child: Container(
                  width: 480,
                  height: 200,
                  color: Color(0xff41124C).withOpacity(0.8),
                ),
                clipper: CustomClipperPath(),
              ),
            ],
          ),
          Align(
            alignment: Alignment(0,-0.70),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/RELOGOO.png'),
              backgroundColor: Colors.white.withOpacity(0.3),
              radius: 70,
            ),
          ),
          Align(
            alignment: Alignment(-0.7,-0.25),
            child: Text(
              'Name:',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff41124C).withOpacity(0.8),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9,-0.26),
            child: Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment(0.8,-0.24),
            child: Text(
              'Reuof',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,-0.15),
            child: Divider(
              height: 30,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          Align(
            alignment: Alignment(-0.7,-0.03),
            child: Text(
              'Phone:',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff41124C).withOpacity(0.8),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9,-0.04),
            child: Icon(
              Icons.phone,
              color: Colors.white,
              size: 30,
            ),
          ),
          Align(
            alignment: Alignment(0.8,-0.03),
            child: Text(
              '+966 54 088 566 33',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment:Alignment(0,0.06) ,
            child: Divider(
              height: 30,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          Align(
            alignment: Alignment(-0.9,0.17),
            child: Icon(
              Icons.location_on,
              color: Colors.white,
              size: 30,
            ),
          ),
          Align(
            alignment: Alignment(-0.7,0.18),
            child: Text(
              'Adress:',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff41124C).withOpacity(0.8),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.8,0.18),
            child: Text(
              'Jeddah',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment:Alignment(0,0.26) ,
            child: Divider(
              height: 30,
              color: Colors.white.withOpacity(0.3),
            ),
          ),

          Align(
            alignment: Alignment(-0.9,0.37),
            child: Icon(
              Icons.email,
              color: Colors.white,
              size: 28,
            ),
          ),
          Align(
            alignment: Alignment(-0.7,0.38),
            child: Text(
              'Email:',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff41124C).withOpacity(0.8),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.8,0.38),
            child: Text(
              'rerere00.1h@gmail.com',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment:Alignment(0,0.47) ,
            child: Divider(
              height: 30,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipperPath  extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Path path = Path();
    path.lineTo(0, size.height/1.50);
    path.cubicTo(size.width/13,3*(size.height/2), 8*(size.width/2),
        size.height/2,size.width, size.height/2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

