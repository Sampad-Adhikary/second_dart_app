// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors, dead_code

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: MyCounterStatefulwidget(),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyCounterStatefulwidget extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return MyCounterWidgetState();
    // throw UnimplementedError();
  }
}

class MyCounterWidgetState extends State<MyCounterStatefulwidget> {
  int myNumber = 0;
  void onPressPlus() {
    setState(() {
      myNumber = myNumber + 1;
    });
  }

  void onPressMinus() {
    setState(() {
      myNumber = myNumber - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (Row(
          children: [
            Container(
              height: 170,
              width: 170,
              padding: EdgeInsets.only(left: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(padding: EdgeInsets.all(20)),
                  Text(
                    "Sarita",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "Blood",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "Bank",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(
                      Icons.circle,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 225,
              width: 170,
              padding: EdgeInsets.only(left: (20), top: (40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blood Group",
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "B +ve",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Text("Add units"),
                  Container(
                    height: 50,
                    width: 200,
                    // margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      if (myNumber > 0)
                        Container(
                          height: 35,
                          width: 45,
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: onPressMinus,
                            child: Text(
                              "-",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      // Padding(
                      //     padding: EdgeInsets.all(15),
                      //     child: Text(myNumber.toString())),
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(myNumber.toString())),
                      if (myNumber < 9 && myNumber >= 0)
                        Container(
                            height: 35,
                            width: 50,
                            margin: EdgeInsets.only(right: 3),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: onPressPlus,
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ))
                    ]),
                  )
                ],
              ),
            )
          ],
        )),
        if (myNumber >= 9)
          Container(
            width: 400,
            height: 40,
            // margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "You have reached maximum unit limit.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
      ],
    );
  }
}
