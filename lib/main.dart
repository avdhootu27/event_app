import 'package:event_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashScreen(),
    );
  }
}

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset('assets/background.png'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/logo.png',height: 50,),
                Row(
                  children: [
                    Text('UVE', style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800
                    ),),
                    Text('NTO', style: TextStyle(
                        color: Color(0xffFFA700),
                        fontSize: 22,
                        fontWeight: FontWeight.w800
                    ),)
                  ],
                ),
                SizedBox(height: 14,),
                Text("There's a lot happening around you! Our mission is to provide what's happening near you",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(height: 14,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Home(),
                    ));
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Text('Get Started', style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                  ),
                )
              ],
            )
          )
        ],

      ),
    );
  }
}















