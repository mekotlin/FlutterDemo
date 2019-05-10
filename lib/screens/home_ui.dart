import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Dnyaneshwar Dalvi'),
              accountEmail: Text('dnyane.dalvi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('D', style: TextStyle(fontSize: 30.0)),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text(
                    'P',
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            ListTile(
                title: Text('Video'),
                trailing: Icon(Icons.ondemand_video),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/a');
                }),
            ListTile(
              title: Text('Gallery'),
              trailing: Icon(Icons.camera),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text('Camera Front'),
              trailing: Icon(Icons.camera_front),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text('Camera Rear'),
              trailing: Icon(Icons.camera_rear),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
