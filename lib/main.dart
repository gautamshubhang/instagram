import 'package:flutter/material.dart';
import 'stories.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image(image: AssetImage(r'assets/Vector.png')),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined),color: Colors.black,),
            IconButton(onPressed: (){},icon:ImageIcon(AssetImage(r'assets/heart.png'),),color: Colors.black,),
            IconButton(onPressed: (){},icon:ImageIcon(AssetImage(r'assets/Share.png'),),color: Colors.black,),
          ],
        ),
      ),
      body: Container(
        child: story_slider(),
      ),
    );
  }
}
