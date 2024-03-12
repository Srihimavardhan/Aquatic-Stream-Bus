import 'package:aquatic_stream_bus/Screens/LoginPage.dart';
import 'package:flutter/material.dart';
// import 'package:aquatic_stream_bus/demo/demm.dart';
Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aquatic Stream Bus',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255))
                .copyWith(secondary: Color.fromARGB(255, 22, 239, 228))),
        home: LoginPage());
  }
}
