import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/views/home.dart';
import 'package:instagram_clone/views/profile.dart';

class BottomNavigationBarC extends GetxController {

  int idx = 0;

  final views = const <Widget>[
    HomeV(),
    Center(child: Text('Explore View - not implemented :)')),
    Center(child: Text('Create View - not implemented :)')),
    Center(child: Text('Reels View - not implemented :)')),
    ProfileV(),
  ];

  void changeIdx(int newIdx) {
    idx = newIdx;
    update();
  }

}