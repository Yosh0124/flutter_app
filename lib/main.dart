import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final title = 'flutterサンプル';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          child: Text('Home Screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("next"),
            icon: Icon(Icons.navigate_next),
          ),
        ],
        onTap: (int value) {
          if(value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          }
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next"),
      ),
      body: Center(
        child: Text("Next Screen"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text("prev"),
            icon: Icon(Icons.navigate_before),
          ),
          BottomNavigationBarItem(
            title: Text("?"),
            icon: Icon(Icons.android),
          )
        ],
        onTap: (int value) {
          if( value==0 ) Navigator.pop(context);
        },
      ),
    );
  }
}