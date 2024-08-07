import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/config/theme.dart';

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
    return GetMaterialApp(
      title: 'Instagram Clone',
      themeMode: ThemeMode.system,
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }

}