import 'package:flutter/material.dart';
import 'package:medical/Appoinment.dart';
import 'package:medical/Appointment1.dart';



import 'package:page_transition/page_transition.dart';


import 'navigationitem.dart';

class HealDashBoards extends StatefulWidget {
  late final String title = "HealTether";
  static List<NavigationItem> listData = [];
  static List<double> data = [0, 0];

  static calculateData() {
    data = [0, 0];
    HealDashBoards.listData.forEach((element) {
      if (element.type[0] == "+") {
        HealDashBoards.data[0] += element.id;
      } else {
        HealDashBoards.data[1] += element.id;
      }
    });
  }

  @override
  _MyHealDashBoardsState createState() => _MyHealDashBoardsState();
}

class _MyHealDashBoardsState extends State<HealDashBoards> {
  int currentIndex = 0;
  late List<Widget> pages;
  late List<Color> colors;
  late List<String> titles;
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    pages = [HealDashBoards(), HealDashBoards(), HealDashBoards(),HealDashBoards()];
    colors = [Color(0xff03BF9C), Color(0xff03BF9C), Color(0xff03BF9C),Color(0xff03BF9C)];
    titles = ["Home", "Appiontment", "Chat","Notification"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex],
            style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.language,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: HealDashBoards(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              }),
          new IconButton(
              icon: Icon(
                Icons.notification_add_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: HealDashBoards(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              }),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff03BF9C),
        items: [
          BottomNavigationBarItem(
              icon:  Image.asset('assets/patient.png',
          fit: BoxFit.fill,
                color: Color(0xff292929),
              ),
              label: 'Home',
              backgroundColor: Color(0xff292929)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/patient.png',
                  fit: BoxFit.fill),
              label: 'Appiontment',
              backgroundColor: Color(0xff292929)),
          BottomNavigationBarItem(
              icon:Image.asset('assets/patient.png',
                  fit: BoxFit.fill),
              label: 'Chat',
              backgroundColor: Color(0xff292929)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/patient.png',
                  fit: BoxFit.fill),
              label: 'Notification',
              backgroundColor: Color(0xff292929))
        ],
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            HealDashBoards.calculateData();
          });
        },
      ),
    );
  }
}
