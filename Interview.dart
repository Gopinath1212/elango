import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical/Appoinment.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.list),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Image.asset("assets/app_logo.png"),
              ))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.teal.shade900,
                  Colors.tealAccent,
                ],
              ),
            ),
            height: 280,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Monday \n 1 oct,2023",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      Text("12:30",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Dr.Gopinath",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.white,
                              Colors.deepPurple.shade900,
                            ],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.teal[500]),
                          child: Center(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text("ongoing",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500)),
                              Text("4/10",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500)),
                            ],
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Appoaintment status",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Remaining",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.deepPurple,
                              ),
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Completed",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          /* Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: Container(
                height: 100,
                width: 180,
                decoration: BoxDecoration(
                  border:Border.all(),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)
                  ),


                ),
                child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(child: Text("Patients Record",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                          Icon(Icons.person_add)
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Maintain and Manage the Patients Record")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                height: 100,
                width: 180,
                decoration: BoxDecoration(
                  border:Border.all(),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)
                  ),


                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Expanded(child: Text("Past appoinments",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                          Icon(Icons.av_timer_rounded)
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Record of pass appoinments")
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),*/
          Row(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
                child: InkWell(
                  child: Container(
                    width: 160,
                    height: 118,
                    child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "  Patients \n  Record",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(Icons.person_add_alt_1)
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    " Maintain and manage ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Patient record ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),

                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
                child: InkWell(
                  child: Container(
                    width: 160,
                    height: 118,
                    child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "  Past  \n  appointments",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                 Icon(Icons.alarm_add_sharp)
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    " Maintain and manage ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Patient record ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),

                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
                child: InkWell(
                  child: Container(
                    width: 160,
                    height: 118,
                    child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "  Manage \n  Staff",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(Icons.person_pin)
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    " Maintain and manage ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Patient record ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),

                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
                child: InkWell(
                  child: Container(
                    width: 160,
                    height: 118,
                    child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "  Timings",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(Icons.access_alarms_rounded)
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    " Maintain and manage ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Patient record ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),

                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
                child: InkWell(
                  child: Container(
                    width: 150,
                    height: 118,
                    child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            children: [
                             SizedBox(height: 12,),
                              Row(
                                children: [
                                  Text(
                                    "  Payment \n  Record",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(Icons.money)
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Text(
                                    " Maintain and manage ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Patient record ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),

                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
                child: InkWell(
                  child: Container(
                    width: 160,
                    height: 118,
                    child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffffffff),
                                Color(0xffffffff),
                                Color(0xffffffff),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 12,),
                              Row(
                                children: [
                                  Text(
                                    "Notes",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(Icons.note)
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Text(
                                    " Maintain and manage ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "Patient record ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),

                ),
              ),
            ],
          ),
         SizedBox(height: 5,),
         ElevatedButton(
           onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Doctor()),
              );

           },
           child: Icon(Icons.person_pin),
         ),
          SizedBox(height: 5,),






          BottomNavigationBar(
            backgroundColor: Colors.black,

            items: [

              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.blue),
              BottomNavigationBarItem(icon: Icon(Icons.phone),label: 'Appointment',backgroundColor: Colors.blue),
              BottomNavigationBarItem(icon: Icon(Icons.add_chart),label: 'chat'),
              BottomNavigationBarItem(icon: Icon(Icons.add_alert),label: 'Notification'),
            ],
          ),
        ],
      ),
    );
  }
}
