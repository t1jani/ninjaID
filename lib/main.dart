import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[600],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange[500],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ninja.jpg'),
                  radius: 40,
                ),
              ),
              Divider(height: 50, color: Colors.white),
              Text(
                'Name',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Mario',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Current Ninja Level',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.orange[200],
                  ),
                  SizedBox(width: 10),
                  Text(
                    'mario@mariokart.game',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
