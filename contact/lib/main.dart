import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/asmlogore.png'),
        splashIconSize: 300,
        nextScreen: Route1(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
        //duration: 3000,
      ),
    );
  }
}

class Route1 extends StatelessWidget {
  const Route1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Color(0xffffffff),
          shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset('assets/asmlogore.png', width: 75,),
                ),
              ],
            ),
          Container(
          height: 140,
          margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
            decoration: BoxDecoration(
              color: Color(0xff0d6eb8),
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.75),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
            Row(
              children: [
                Container(
                  width: 180,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 180,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(5, 0, 15, 15),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: Text('유용한 기능')
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.food_bank_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.money_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.school_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.tag_faces_rounded),
              onPressed: () {},
            ),
          ],
        )
      ),
    );
  }
}


/*ElevatedButton(
child: Text('화면2 키기'),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => SecondRoute()),
);
},
),*/

/*child: Container(
height: 65,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.only(
topRight: Radius.circular(20,),
topLeft: Radius.circular(20,),
),
),
),*/


/*Container(
width: double.infinity,
height: double.infinity,
color: Color(0xffffffff),
child: Center(
child: Container(
height: 160,
margin: EdgeInsets.fromLTRB(15, 0, 15, 555),
decoration: BoxDecoration(
borderRadius: BorderRadius.only(
topRight: Radius.circular(20,),
topLeft: Radius.circular(20,),
bottomLeft: Radius.circular(20,),
bottomRight: Radius.circular(20,),
),
color: Color(0xff0d6eb8),
),
),
),
),*/

/*Container(
height: 160,
margin: EdgeInsets.fromLTRB(15, 0, 15, 1),
decoration: BoxDecoration(
color: Color(0xff0d6eb8),
borderRadius: BorderRadius.circular(22),
boxShadow: [
BoxShadow(
color: Colors.grey.withOpacity(0.5),
spreadRadius: 5,
blurRadius: 7,
offset: Offset(0, 3), // changes position of shadow
),
],
),
),*/