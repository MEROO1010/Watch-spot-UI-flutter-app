import 'package:flutter/material.dart';

class smartWatches extends StatefulWidget {
  const smartWatches({super.key});

  @override
  State<smartWatches> createState() => _smartWatchesState();
}

class _smartWatchesState extends State<smartWatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ));
  }
}
