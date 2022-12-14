import 'package:flutter/material.dart';
import 'package:watch_spot/Screens/details.dart';
import 'package:watch_spot/Screens/explore.dart';

class smartWatches extends StatefulWidget {
  const smartWatches({super.key});

  @override
  State<smartWatches> createState() => _smartWatchesState();
}

class _smartWatchesState extends State<smartWatches> {
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
                    child: Image.asset('assets/images/text_smart_watches.png'),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => details()),
                      );
                    },
                    child: Image.asset("assets/images/smart-watch-1.png"),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/smart-watch-2.png"),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/smart-watch-3.png"),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset("assets/images/smart-watch-4.png"),
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
