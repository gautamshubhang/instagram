import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'stories.dart';
import 'post.dart';
import 'profile.dart';

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
  int _selectedIndex = 1;
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
            GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset(
                      'assets/heart.svg',
                      colorFilter: ColorFilter.mode(
                          _selectedIndex == 1 ? Colors.black : Colors.white,
                          BlendMode.srcIn),
                    )
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset(
                      'assets/share.svg',
                      colorFilter: ColorFilter.mode(
                          _selectedIndex == 1 ? Colors.black : Colors.white,
                          BlendMode.srcIn),
                    )
                )),          ],
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
        height: 48.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: SizedBox(
                    height: 28,
                    width: 28,
                    child: SvgPicture.asset(
                      'assets/home.svg',
                      colorFilter: ColorFilter.mode(
                          _selectedIndex == 1 ? Colors.black : Colors.white,
                          BlendMode.srcIn),
                    )
                )),
            IconButton(onPressed: (){},icon:Icon(Icons.search_rounded,size: 28.0,),color: Colors.black,),
            IconButton(onPressed: (){},icon:Icon(Icons.add_box_outlined,size: 28.0,),color: Colors.black,),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: SizedBox(
                    height: 28,
                    width: 28,
                    child: SvgPicture.asset(
                      'assets/reel.svg',
                      colorFilter: ColorFilter.mode(
                          _selectedIndex == 1 ? Colors.black : Colors.white,
                          BlendMode.srcIn),
                    )
                )),
            IconButton(onPressed: (){runApp(MaterialApp(home: profile(),));},icon:Image(image:AssetImage(r'assets/user.png'),width: 25.0,height: 25.0,color: null,)),
          ],
        ),
      ),
    );
  }
}
