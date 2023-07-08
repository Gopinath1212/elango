import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical/Appointment1.dart';
import 'package:medical/appoinment2.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },

                  child: Icon(Icons.arrow_back)),
              Text("Add Appointment",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              Icon(Icons.clear)
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 300.0),
            child: Container(

              color: Colors.green,
              height: 10,
              width: 50,
            ),
          ),
          Text("Appointment details"),
          SizedBox(height: 10,),
          TextFormField(

            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(

                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),

                label: Center(child: Text("Quick Application")),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
          SizedBox(height: 10,),
          TextFormField(

            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(

                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),
                suffixIcon: Icon(Icons.arrow_drop_down),

                label: Center(child: Text("SelectDate")),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
          SizedBox(height: 10,),
          TextFormField(

            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(

                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),
                suffixIcon: Icon(Icons.arrow_drop_down),

                label: Text("Select time slot"),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
          SizedBox(height: 10,),
          TextFormField(

            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(

                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),

                label: Text("Exact time"),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
          SizedBox(height: 10,),
          TextFormField(

            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(

                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),
                suffixIcon: Icon(Icons.arrow_drop_down),

                label: Text("Attending Doctor"),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
          SizedBox(height: 10,),
          TextFormField(

            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(

                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),

                label: Text("Appointment reason"),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
          Row(
            children: [
              Icon(Icons.plus_one,color: Colors.green,),
              Text("Add notes",style: TextStyle(fontSize: 15,color: Colors.green),)
            ],
          ),
          SizedBox(height: 10,),
          TextFormField(

            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(

                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),


                label: Center(child: Text("Schedule appointment")),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
          SizedBox(height: 10,),
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
