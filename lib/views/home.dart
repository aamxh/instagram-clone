import 'package:flutter/material.dart';

class HomeV extends StatelessWidget {

  const HomeV({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  theme.scaffoldBackgroundColor == Colors.black ?
                  'assets/logos/instagram_dark.png' :
                  'assets/logos/instagram_light.png',
                  width: size.width * 0.3,
                ),
                Row(
                  children: [
                    Image.asset(
                      theme.scaffoldBackgroundColor == Colors.black ?
                      'assets/icons/like_dark.png' :
                      'assets/icons/like_light.png',
                      width: 28,
                      height: 28,
                    ),
                    SizedBox(width: size.width * 0.07,),
                    Image.asset(
                      theme.scaffoldBackgroundColor == Colors.black ?
                      'assets/icons/chat_dark.png' :
                      'assets/icons/chat_light.png',
                      width: 26,
                      height: 26,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}