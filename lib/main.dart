import 'package:flutter/material.dart';
import 'stories.dart';
import 'post.dart';

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
      resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            height: 122.0,
            child: ListView.builder(
              itemCount: ln.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return story(name: ln[index]);
                },
            ),
          ),
            Container(
              height: ln.length * 712,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: ln.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index){
                   return Padding(
                     padding: const EdgeInsets.only(bottom: 5.0),
                     child: post(name: ln[index]),
                   );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Row(
          children: [
            
          ],
        ),
      ),
    );
  }
}
