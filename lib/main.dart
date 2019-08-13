import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Dog app',
      theme: ThemeData(
        primaryColor: Colors.tealAccent,
        primaryColorDark: Colors.greenAccent,
        backgroundColor: Colors.black,
        
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Dogs 🐶", style: TextStyle(color: Colors.black)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
              DogName("Doggo","images/Dogs.jpeg"),
              SizedBox(height: 8.0),
              DogName("Mad", "images/mad.jpg"),
              SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}

class DogName extends StatelessWidget{
  final String name;
  final String image;
  const DogName(this.name, this.image);

  @override
  Widget build(BuildContext context){
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.tealAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(image),
      ),
    );
  }
}