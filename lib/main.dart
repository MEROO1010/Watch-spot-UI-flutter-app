import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:watch_spot/Screens/LuxuryWatches.dart';
import 'package:watch_spot/Screens/explore.dart';
import 'package:watch_spot/Screens/order.dart';
import 'package:watch_spot/Screens/smart_watches.dart';

import 'Screens/details.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => GetStart(),
      '/explore': (context) => Explore(),
      '/smart_watches': (context) => smartWatches(),
      '/Luxury Watches': (context) => luxury_watches(),
      '/details': (context) => details(),
      '/order': (context) => Order(),
    },
  ));
}

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 182, 182, 1),
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/images/logo.png',
            ),
            padding: EdgeInsets.fromLTRB(20, 180, 0, 0),
          ),
          Container(
            child: AnimatedButton(
              height: 70,
              width: 300,
              text: 'Get Started',
              isReverse: true,
              selectedTextColor: Color.fromRGBO(85, 111, 102, 1),
              transitionType: TransitionType.LEFT_TO_RIGHT,
              //textStyle: TextStyle(color: Colors.white, fontSize: 20),
              backgroundColor: Color.fromRGBO(85, 111, 102, 1),
              borderColor: Colors.white,
              selectedBackgroundColor: Color.fromARGB(255, 255, 255, 255),
              borderRadius: 50,
              borderWidth: 2,
              animationDuration: Duration(seconds: 40),
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Explore()),
                );
              },
            ),
            margin: EdgeInsets.only(left: 50, top: 600),
          ),
        ],
      ),
    );
  }
}
