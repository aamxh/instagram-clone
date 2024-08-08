import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/config/constants.dart';
import 'package:instagram_clone/controllers/main.dart';

class MainV extends StatelessWidget {

  const MainV({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GetBuilder<BottomNavigationBarC>(
      init: BottomNavigationBarC(),
      builder: (ctrl) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: theme.scaffoldBackgroundColor == Colors.black ?
          MyConstants.darkBottomNavigationBarItems :
          MyConstants.lightBottomNavigationBarItems
          ,
          onTap: ctrl.changeIdx,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
          elevation: 0,
          currentIndex: ctrl.idx,
          selectedFontSize: 12,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        body: ctrl.views[ctrl.idx],
      ),
    );
  }

}