import 'package:flutter/material.dart';
import 'package:watch_spot/Screens/order.dart';
import 'package:watch_spot/Screens/smart_watches.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Color.fromRGBO(182, 182, 182, 1),
            body: Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => smartWatches()),
                  );
                },
                child: Image.asset("assets/images/left-arrow.png"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(left: 30, top: 50),
                ),
              ),
            )),
        Container(
          child: Image.asset("assets/images/smart-watch-details.png"),
          padding: EdgeInsets.only(left: 16, top: 140),
        ),
        Container(
          child: Text(
            "Smart Watch White color",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
                decoration: TextDecoration.none),
          ),
          padding: EdgeInsets.only(left: 20, top: 540),
        ),
        Row(
          children: [
            Container(
              child: Image.asset("assets/images/white-circle.png"),
              padding: EdgeInsets.only(left: 40, top: 600),
            ),
            Container(
              child: Image.asset("assets/images/black-circle.png"),
              padding: EdgeInsets.only(left: 40, top: 600),
            ),
            Container(
              child: Image.asset("assets/images/light-green-circle.png"),
              padding: EdgeInsets.only(left: 40, top: 600),
            )
          ],
        ),
        Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                );
              },
              child: Text(
                "Order",
                style: TextStyle(fontSize: 25),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(85, 111, 102, 1),
                  minimumSize: Size(200, 44),
                  shape: StadiumBorder()),
            ),
            padding: EdgeInsets.only(left: 100, top: 700)),
      ],
    );
  }
}
