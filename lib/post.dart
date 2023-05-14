import 'package:flutter/material.dart';

class post extends StatefulWidget {
  final String name;
  const post({Key? key, required this.name}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image(image:AssetImage(r'assets/user.png'),width: 25.0,height: 25.0,),
          title: Text(widget.name),
          trailing: IconButton(onPressed: (){},icon: Icon(Icons.more_vert),color: Colors.black,),
        ),
        Container(
          height: 469.0,
          child: Image(image: AssetImage(r'assets/user.png'),),
        ),
        Row(
          children: [
            IconButton(onPressed: (){},icon:ImageIcon(AssetImage(r'assets/heart.png'),size: 25.0,),color: Colors.black,),
            IconButton(onPressed: (){},icon:ImageIcon(AssetImage(r'assets/chat.png'),size: 25.0,),color: Colors.black,),
            IconButton(onPressed: (){},icon:ImageIcon(AssetImage(r'assets/Share.png'),size: 25.0,),color: Colors.black,),
            Spacer(),
            IconButton(onPressed: (){},icon:ImageIcon(AssetImage(r'assets/save.png'),size: 25.0,),color: Colors.black,),
          ],
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('23033 Likes',style: TextStyle(fontWeight: FontWeight.bold),),
                Text(widget.name + ' '+'I have filmed a small vlog of north Dhaka, and I’m very excited to post on YouTube, will po...more'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
