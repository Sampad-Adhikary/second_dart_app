// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: SafeArea(
            child: Container(
                width: 400,
                height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.red,
                      height: double.infinity,
                      child: Text("I am red"),
                    ),
                    Container(
                      color: Colors.blue,
                      height: double.infinity,
                      child: Text("I am blue"),
                    ),
                    Container(
                      color: Colors.green,
                      height: double.infinity,
                      child: Text("I am green"),
                    ),
                  ],
                )))),
  ));
  // debugShowCheckedModeBanner: false,
}


//IMAGES: 
// Asset Images: makes the app size big
// FIle Images: Images stored in device 
// Network Images: Images stored in server
