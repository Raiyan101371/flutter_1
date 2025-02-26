import 'package:flutter/material.dart';

void main() {
  runApp(const Lab05());
}
/*
tinyurl.com/cse414-nike-res
*/
class Lab06 extends StatelessWidget {
  const Lab06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "this is new app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter UI 2"),
        ),
        body: Container(
          height:double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size:60,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size:60,
              ),
            ]
          ) 
        ,
      ),//Row
    )
    );
  }
}
