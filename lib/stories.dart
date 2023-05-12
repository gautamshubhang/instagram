import 'package:flutter/material.dart';

List ln = ['Your Story','Shubhang','nihal','nitant','shaurya','rohan','srijan','yaawar','kartik','uadayan'];
List<Widget> slider(){
  List<Widget> lt = [];
  var a = ln.length;
  var i = 0;
  while (a>=1){
    lt.add(story(name: ln[i]));
    i = i + 1;
    a = a - 1;
  }
  return lt;
}

class story_slider extends StatefulWidget {
  const story_slider({Key? key}) : super(key: key);

  @override
  State<story_slider> createState() => _story_sliderState();
}

class _story_sliderState extends State<story_slider> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: slider(),
    );
  }
}

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
