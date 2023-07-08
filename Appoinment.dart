

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical/Appointment1.dart';
import 'package:medical/Interview.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Medical()),
                    );
                  },

                    child: Icon(Icons.arrow_back)),
                Text("Add Appointment",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Icon(Icons.clear)
              ],
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Text("Selct the mode of consulattion of your choice")
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Container(

                color: Colors.green,
                height: 10,
                width: 50,
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  ),
                  label: Center(child: Text("Physical Consultation")),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  )

              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  ),
                  label: Center(child: Text("Virtual Consultation")),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  )

              ),
            ),
            SizedBox(height: 70,),
            Container(
              height: 50,
              width: 380,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Patient()),
                  );
                },
                child: Text("Next"),

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
      )
    );
  }
}
