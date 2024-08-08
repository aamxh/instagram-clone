import 'package:flutter/material.dart';

class ProfileV extends StatelessWidget {

  const ProfileV({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [],
      ),
    );
  }

}