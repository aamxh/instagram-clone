import 'package:flutter/material.dart';

class MyConstants {

  MyConstants._();

  static const Color grey = Color(0xff808080);
  static const Color yellow = Color(0xfff2c75a);
  static const Color violet = Color(0xff702a8c);
  static const Color rose = Color(0xffbf1b57);

  static final darkBottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/home_dark_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/home_dark_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/search_dark_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/search_dark_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/add_dark_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/add_dark_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/reels_dark_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/reels_dark_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/images/my_pfp.jpg', width: 30, height: 30,),
      ),
      activeIcon: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/images/my_pfp.jpg', width: 30,),
      ),
      label: '',
    ),
  ];

  static final lightBottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/home_light_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/home_light_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/search_light_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/search_light_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/add_light_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/add_light_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/reels_light_outlined.png', width: 28,),
      activeIcon: Image.asset('assets/icons/reels_light_filled.png', width: 28,),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/images/my_pfp.jpg', width: 30,),
      ),
      activeIcon: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/images/my_pfp.jpg', width: 30,),
      ),
      label: '',
    ),
  ];

  static const usersPFPs = [
    'assets/images/my_pfp.jpg',
    'assets/images/wilflovattgeo.jpg',
    'assets/images/othmanalkamees.png',
    'assets/images/darealboeshi.png',
    'assets/images/nexus.estin.png',
    'assets/images/default_pfp.png',
  ];

  static const usersNames = [
    'aamxh',
    'wilflovattgeo',
    'othmanalkamees',
    'darealboeshi',
    'nexus.estin',
    'vhhxsgn',
  ];

}