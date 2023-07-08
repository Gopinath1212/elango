import 'dart:html';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.dashboard),
          Padding(
            padding: const EdgeInsets.only(left: 315.0),
            child: Container(
               height: 50,
               width: 50,

        decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage("https://images.pexels.com/photos/2338046/pexels-photo-2338046.jpeg?cs=srgb&dl=pexels-tu%E1%BA%A5n-ki%E1%BB%87t-jr-2338046.jpg&fm=jpg"),
                fit: BoxFit.fill
            ),
             borderRadius: const BorderRadius.all(Radius.circular(50)),
              border: Border.all(),


        ),
      ),
          )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Welcome Home \n Garret Reynolds",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 280.0),
                child: Text("Smart Device",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              )
            ],
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                  height: 160,
                  width: 160,
                  child: Card(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.light),
                            ),
                          ],
                        ),
                        Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 90.0),
                              child: Text("Smart \n light",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            // Container(
                            //   child: FlutterSwitch(
                            //     width: 125.0,
                            //     height: 55.0,
                            //     valueFontSize: 25.0,
                            //     toggleSize: 45.0,
                            //     value: status,
                            //     borderRadius: 30.0,
                            //     padding: 8.0,
                            //     showOnOff: true,
                            //     onToggle: (val) {
                            //       setState(() {
                            //         status = val;
                            //       });
                            //     },
                            //   ),
                            // ),
                          ],
                        )
                      ],
                    )





                ),

              ),
              ),
              InkWell(
                child: Container(
                  height: 160,
                  width: 160,
                  child: Card(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.ac_unit),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 90.0),
                                child: Text("Smart \n Ac",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                              // Container(
                              //   child: FlutterSwitch(
                              //     width: 125.0,
                              //     height: 55.0,
                              //     valueFontSize: 25.0,
                              //     toggleSize: 45.0,
                              //     value: status,
                              //     borderRadius: 30.0,
                              //     padding: 8.0,
                              //     showOnOff: true,
                              //     onToggle: (val) {
                              //       setState(() {
                              //         status = val;
                              //       });
                              //     },
                              //   ),
                              // ),
                            ],
                          )
                        ],
                      )





                  ),

                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                  height: 160,
                  width: 160,
                  child: Card(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.tv),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:90.0),
                                child: Text("Smart \n Tv",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                              // Container(
                              //   child: FlutterSwitch(
                              //     width: 125.0,
                              //     height: 55.0,
                              //     valueFontSize: 25.0,
                              //     toggleSize: 45.0,
                              //     value: status,
                              //     borderRadius: 30.0,
                              //     padding: 8.0,
                              //     showOnOff: true,
                              //     onToggle: (val) {
                              //       setState(() {
                              //         status = val;
                              //       });
                              //     },
                              //   ),
                              // ),
                            ],
                          )
                        ],
                      )





                  ),

                ),
              ),
              InkWell(
                child: Container(
                  height: 160,
                  width: 160,
                  child: Card(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.mode_fan_off),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 90.0),
                                child: Text("Smart \n Fan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                              // Container(
                              //   child: FlutterSwitch(
                              //     width: 125.0,
                              //     height: 55.0,
                              //     valueFontSize: 25.0,
                              //     toggleSize: 45.0,
                              //     value: status,
                              //     borderRadius: 30.0,
                              //     padding: 8.0,
                              //     showOnOff: true,
                              //     onToggle: (val) {
                              //       setState(() {
                              //         status = val;
                              //       });
                              //     },
                              //   ),
                              // ),
                            ],
                          )
                        ],
                      )





                  ),

                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
