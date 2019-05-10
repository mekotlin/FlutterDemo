import 'package:flutter/material.dart';
import 'screens/screen_ui.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
          primarySwatch: Colors.pink,
          brightness: Brightness.light,
          accentColor: Colors.red),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();  
    loadScreen();
  }

  Future<Timer> loadScreen() async {
    return Timer(Duration(seconds: 3), _loadUI);
  }

  void _loadUI() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginUI()));
  }

  Widget _showSplashScreen() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/splash.png'), fit: BoxFit.contain)),
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showSplashScreen(),
    );
  }
}
