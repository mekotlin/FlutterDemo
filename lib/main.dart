import 'package:flutter/material.dart';
import 'screens/screen_ui.dart';
import 'dart:async';

void main() => runApp(MyApplication());

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        
      ),
    );
  }
}
// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "MyApp",
//       home: HomePage(),
//       theme: ThemeData(
//           primarySwatch: Colors.green,
//           brightness: Brightness.light,
//           accentColor: Colors.red),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String myText = "Hello World";
//   void _changeText() {
//     setState(() {
//       if (myText.startsWith('H')) {
//         myText = 'Welcome to my world';
//       } else {
//         myText = 'Hello World';
//       }
//     });
//   }

//   Widget _bodyWidget() {
//     return Container(
//       padding: const EdgeInsets.all(8.0),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               myText,
//               style: TextStyle(fontSize: 20.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: _bodyWidget(),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: _changeText,
//       ),
//     );
//   }
// }
