import 'package:flutter/material.dart';
import 'package:watch_spot/Screens/smart_watches.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Color.fromRGBO(182, 182, 182, 1),
            body: Container(
              child: TextField(
                  cursorColor: Color.fromRGBO(232, 232, 232, 1),
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(232, 232, 232, 1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    //hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    contentPadding: EdgeInsets.only(left: 5),
                    prefixIcon: Container(
                      // padding: EdgeInsets.only(right: 240),
                      child: Icon(Icons.search),
                    ),
                  )),
              padding: EdgeInsets.only(top: 60, left: 40),
              width: 340,
            )),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => smartWatches()),
              );
            },
            child: Image.asset("assets/images/SmartWatches.png"),
            style: TextButton.styleFrom(maximumSize: Size(600, 800)),
          ),
          padding: EdgeInsets.only(left: 20, top: 138),
        ),
        Container(
          child: TextButton(
            onPressed: () {},
            child: Image.asset("assets/images/LuxuryWatches.png"),
            style: TextButton.styleFrom(maximumSize: Size(600, 800)),
          ),
          padding: EdgeInsets.only(left: 20, top: 300),
        ),
        Container(
          child: TextButton(
            onPressed: () {},
            child: Image.asset("assets/images/QuartzWatches.png"),
            style: TextButton.styleFrom(maximumSize: Size(600, 800)),
          ),
          padding: EdgeInsets.only(left: 20, top: 460),
        ),
        Container(
          child: TextButton(
            onPressed: () {},
            child: Image.asset("assets/images/AnaloguesWatches.png"),
            style: TextButton.styleFrom(maximumSize: Size(600, 800)),
          ),
          padding: EdgeInsets.only(left: 20, top: 620),
        )
      ],
    );
  }
}
