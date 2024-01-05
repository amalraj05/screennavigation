import 'package:flutter/material.dart';
import 'package:screennavigation/page1.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green[700],
      leading: Text(""),
        title: Text("SCREEN NAVIGATION",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
            ),
            
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page1(),));
            }, 
            child: Text("next")),
        ),
      ),
    );
  }
}