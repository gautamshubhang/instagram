import 'package:flutter/material.dart';

List ln = ['Your Story','Shubhang','nihal','nitant','shaurya','daddy','srijan','yaawar','kartik','uadayan'];

class story extends StatefulWidget {
  final String name;
  const story({Key? key, required this.name}) : super(key: key);

  @override
  State<story> createState() => _storyState();
}

class _storyState extends State<story> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 11.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle,),
            child: IconButton(onPressed: (){},icon: Image(image: AssetImage(r'assets/user.png'),),iconSize: 60.0,),
          ),
          Text(widget.name),
        ],
      ),
    );
  }
}
