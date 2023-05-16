import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class post extends StatefulWidget {
  final String name;
  const post({Key? key, required this.name}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  int t = 1;
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
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      t = 1;
                    });
                  },
                  child: SizedBox(
                      height: 25,
                      width: 25,
                      child: SvgPicture.asset(
                        'assets/heart.svg',
                        colorFilter: ColorFilter.mode(
                            t == 1 ? Colors.black : Colors.red,
                            BlendMode.srcIn),
                      )
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      t = 1;
                    });
                  },
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/chat.svg',
                        colorFilter: ColorFilter.mode(
                            t == 1 ? Colors.black : Colors.white,
                            BlendMode.srcIn),
                      )
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      t = 1;
                    });
                  },
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/share.svg',
                        colorFilter: ColorFilter.mode(
                            t == 1 ? Colors.black : Colors.white,
                            BlendMode.srcIn),
                      )
                  )),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      t = 1;
                    });
                  },
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/save.svg',
                        colorFilter: ColorFilter.mode(
                            t == 1 ? Colors.black : Colors.white,
                            BlendMode.srcIn),
                      )
                  )),
            ],
          ),
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
