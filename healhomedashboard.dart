import 'package:flutter/material.dart';
import 'package:medical/Appointment1.dart';
import 'package:medical/appContexts.dart';
import 'package:medical/appoinment2.dart';

import 'package:page_transition/page_transition.dart';

import 'Appoinment.dart';

class HealHomeDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 12.0),
              child: _applicationstatusField(context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
              child: _applicationcardField(context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
              child: _servicescardField1(context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
              child: _servicescardField2(context),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
              child: _servicescardField3(context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 12.0),
              child: _ecardstatusField(context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
              child: _ecardstatuscardField(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _applicationstatusField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
      child: Text('Application Status',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20.0,
              color: context.resources.color.colorblack,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget _applicationcardField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 12.0),
      child: InkWell(
        child: Container(
          width: double.infinity,
          height: 295,
          child: Card(
              semanticContainer: true,
              color: Colors.red,
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
                      height: 10,
                    ),
                    _applicationField(context),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget _applicationField(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset('assets/images/frame.png',
                fit: BoxFit.fill),
            title: const Text(' Your Registration is \n Approved Successfully',
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 19.0,
                    color: Color(0xff174a4e),
                    fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }

  Widget _servicesField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
      child: Text('Services',
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20.0,
              color: context.resources.color.colorblack,
              fontWeight: FontWeight.normal)),
    );
  }

  Widget _servicescardField1(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
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
                            Image.asset('assets/images/patient.png',width: 40, height: 40, fit: BoxFit.fill),
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
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: Doctor(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
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
                            Image.asset('assets/images/patient.png',width: 40, height: 40, fit: BoxFit.fill),
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
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: Patient(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _servicescardField2(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
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
                            Image.asset('assets/images/patient.png',width: 40, height: 40, fit: BoxFit.fill),
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
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: Doctor(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
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
                            Image.asset('assets/images/patient.png',width: 40, height: 40, fit: BoxFit.fill),
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
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child:Doctor(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
  Widget _servicescardField3(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
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
                            Image.asset('assets/images/patient.png',width: 40, height: 40, fit: BoxFit.fill),
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
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: Patient(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 6.0, top: 12.0),
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
                            Image.asset('assets/images/patient.png',width: 40, height: 40, fit: BoxFit.fill),
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
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: Doctor(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
  Widget _ecardstatusField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 2.0),
      child: Text('E-Card',
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20.0,
              color: context.resources.color.colorblack,
              fontWeight: FontWeight.normal)),
    );
  }
  Widget _ecardstatuscardField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 12.0),
      child: InkWell(
        child: Container(
          width: double.infinity,
          height: 95,
          child: Card(
              semanticContainer: true,
              color: Colors.red,
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
                      height: 10,
                    ),
                    _ecardstatuscardapplicationField(context),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )),
        ),
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              child: Patient(),
              isIos: true,
              duration: Duration(milliseconds: 400),
            ),
          );
        },
      ),
    );
  }
  Widget _ecardstatuscardapplicationField(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset('assets/images/approved.png',
                fit: BoxFit.fill),
            title: const Text(' E-card',
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 19.0,
                    color: Color(0xff174a4e),
                    fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }


}
