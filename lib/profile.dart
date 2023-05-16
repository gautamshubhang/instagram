import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int _sI = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text("shubhang.gautam",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined),color: Colors.black,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _sI = 1;
                    });
                  },
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/heart.svg',
                        colorFilter: ColorFilter.mode(
                            _sI == 1 ? Colors.black : Colors.white,
                            BlendMode.srcIn),
                      )
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _sI = 1;
                    });
                  },
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/share.svg',
                        colorFilter: ColorFilter.mode(
                            _sI == 1 ? Colors.black : Colors.white,
                            BlendMode.srcIn),
                      )
                  )),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,),
                    child: IconButton(onPressed: (){},icon: Image(image: AssetImage(r'assets/user.png'),),iconSize: 100.0,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text('323',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                      Text('Posts'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text('323',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                      Text('Followers'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text('323',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                      Text('Following'),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('shubhang.gautam',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Text('Bio \nmore bio',style: TextStyle(fontSize: 15.0),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Follow',style: TextStyle(fontSize: 15.0),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // <-- Radius
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    width: 150.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Message',style: TextStyle(fontSize: 15.0),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.person_add),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // <-- Radius
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}