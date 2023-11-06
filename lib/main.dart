import 'login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF0028A8),
      ),
      home: Login(),

      // To use the gradient color for the image
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff022AAB),
                Color(0xff2452E1),
              ],
            ),
          ),
          child: child,
        );
      },
    );
  }
}
