import 'package:flutter/material.dart';
import 'package:watch_spot/Screens/details.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
                    MaterialPageRoute(builder: (context) => details()),
                  );
                },
                child: Image.asset("assets/images/left-arrow.png"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(left: 30, top: 50),
                ),
              ),
            )),
        Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Pay Now",
                style: TextStyle(fontSize: 25),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(85, 111, 102, 1),
                  minimumSize: Size(200, 44),
                  shape: StadiumBorder()),
            ),
            padding: EdgeInsets.only(left: 100, top: 660)),
      ],
    );
  }
}
