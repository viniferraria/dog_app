import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Dog app',
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        primaryColorDark: Colors.tealAccent,
        backgroundColor: CupertinoColors.inactiveGray,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Dogs :dog:",
            style: TextStyle(
            color: Colors.black,
          )),
          centerTitle: true,
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
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: CupertinoColors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
        ],
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        )
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
       padding: const EdgeInsets.all(0.0),
       child: Image.asset(image),
     ),
   );
 }
}