import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 'MyApp',
          theme: ThemeData(
            primarySwatch: Colors.red[300],
            visualDensity: VisualDensity.adaptivePlatformDensity,
          )
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              alignment: Alignment.left,
              child: Text("Menu Makanan", style: TextStyle(fontSize:20, color: Colors.black)),
              ),
            Container(
              alignment: Alignment.left,
              child: Text("Review Konsumen", style: TextStyle(fontSize:20, color: Colors.black)),
              ),
          ]
        )
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF000000), 
            image: const DecorationImages(
              image: NetworkImage(
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-keto-pizza-073-1544039876.jpg?crop=0.668xw:1.00xh;0.233xw,0.00255xh&resize=768:*'),
              fit: BoxFit.fitWidth,
              ),
              Text(
                'Pizza asal  Italia',
              ),
              border: Border.all(
                color: Colors.red[300],
                width: 3,
                ),
                borderRadius: BorderRadius.circular(12),
          ),
          height: 200,
          width: 8,
          margin: EdgeInsets.all(20))),
      );
  }
}
     
