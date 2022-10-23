import 'package:flutter/material.dart';
import 'package:watch_spot/Screens/explore.dart';

class luxury_watches extends StatefulWidget {
  const luxury_watches({super.key});

  @override
  State<luxury_watches> createState() => _luxury_watchesState();
}

class _luxury_watchesState extends State<luxury_watches> {
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
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    contentPadding: EdgeInsets.only(left: 5),
                    prefixIcon: Container(
                      child: Icon(Icons.search),
                    ),
                  )),
              padding: EdgeInsets.only(top: 60, left: 40),
              width: 340,
            )),
        ListView(
          scrollDirection: Axis.vertical,
          children: [
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Image.asset('assets/images/text_luxury_watches.png'),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/luxury_Watches_1.png"),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/luxury_Watches_2.png"),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/luxury_Watches_3.png"),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/luxury_Watches_4.png"),
                  ),
                )
              ],
            )
          ],
          padding: EdgeInsets.only(top: 130, left: 20),
        )
      ],
    );
  }
}
