import 'package:flutter/material.dart';

class DrawerModel{
  String ?title;
  Widget ?pages;

  DrawerModel(){}

  void setValue(String title, Widget pages){
    this.title = title;
    this.pages = pages;
  }

  String? rTitle(){
    return this.title;
  }

  Widget? rPages(){
    return this.pages;
  }
  
}