import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/config/theme.dart';
import 'package:instagram_clone/config/constants.dart';
import 'package:splash_view/splash_view.dart';

void main() {
  _initializeApp();
  runApp(const MyApp());
}

Future<void> _initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return GetMaterialApp(
      title: 'Instagram Clone',
      themeMode: ThemeMode.system,
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      debugShowCheckedModeBanner: false,
      home: SplashView(
        logo: Image.asset(
          'assets/insta_logo.png',
          width: size.width * 0.2,
          height: size.width * 0.2,
        ),
        backgroundColor: Colors.black,
        done: Done(const Scaffold(
          body: Center(
            child: CircularProgressIndicator(color: MyConstants.grey,),
          ),
        )),
      ),
    );
  }

}