// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    // height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.yellow, width: 5),
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Text("23/05/2023"),
                            ),
                            Container(
                              // width: 20,
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.all(10),
                              child: Text("Monday"),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(10),
                          child: Text("Go to Gym"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    // height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.yellow, width: 5),
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Text("23/05/2023"),
                            ),
                            Container(
                              // width: 20,
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.all(10),
                              child: Text("Monday"),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(10),
                          child: Text("Go to Gym"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    // height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.yellow, width: 5),
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Text("23/05/2023"),
                            ),
                            Container(
                              // width: 20,
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.all(10),
                              child: Text("Monday"),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(10),
                          child: Text("Go to Gym"),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
      // debugShowCheckedModeBanner: false,
    ),
  );
}

List<Widget> myResult = [];
List<Color> MyContainerColors = [Colors.brown, Colors.red, Colors.blue];

List<Widget> getMyWidget() {
  for (var i = 0; i < MyContainerColors.length; i++) {
    myResult.add(Container(
      width: 40,
      height: 40,
      color: MyContainerColors[i],
      child: Center(child: Text("${i + 1}")),
    ));
  }
  return myResult;
}
