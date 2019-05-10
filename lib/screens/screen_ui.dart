import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final _minimumPadding = 5.0;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var _appKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _appKey,
        child: Padding(
          padding: EdgeInsets.only(top: _minimumPadding * 5),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(_minimumPadding * 5),
                  child: Image.asset(
                    'images/intro.png',
                    fit: BoxFit.contain,
                  )),
              Padding(
                padding: EdgeInsets.all(_minimumPadding * 2),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: userNameController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter user name';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'User Name',
                      hintText: 'Enter user name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(_minimumPadding * 2),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  obscureText: true,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ),
              ),
              Container(
                width: _minimumPadding * 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: _minimumPadding, top: _minimumPadding),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).primaryColorLight,
                  child: Text("LOGIN"),
                  onPressed: () {
                    setState(() {
                      if (_appKey.currentState.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => LoginUI()));
                      }
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
