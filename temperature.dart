import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Column(
        children: [
          Row()
        ],
      ),
    );
  }
}
