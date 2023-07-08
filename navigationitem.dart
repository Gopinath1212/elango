import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';

class NavigationItem {

  int id;
  String type;
  final Icon icon;
  final Text title;
  final Color color;

  NavigationItem( this.id,this.type, this.icon, this.title, this.color);
}