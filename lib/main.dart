import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int n=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('My Funny Memes Ever'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/img$n.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          if(n>10)
            n=0;
          else
            n++;
        });
      },
      child: Text(">"),
      ),

    );
  }
}

