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
                  padding: EdgeInsets.only(left:10),
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
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
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
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Route2()),
              );
                },
            ),
            IconButton(
              icon: Icon(Icons.money_rounded),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route3()),
              );},
            ),
            IconButton(
              icon: Icon(Icons.school_rounded),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route4()),
              );},
            ),
            IconButton(
              icon: Icon(Icons.tag_faces_rounded),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route5()),
              );},
            ),
          ],
        )
      ),
    );
  }
}

class Route2 extends StatelessWidget {
  const Route2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f8f9),
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => Route1()),
            );
          },
          child: Text('급식'),
        ),
      ),
      backgroundColor: Color(0xfff8f8f9),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home_rounded),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Route1()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.food_bank_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.money_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route3()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.school_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route4()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.tag_faces_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route5()),
                );},
              ),
            ],
          )
      ),
    );
  }
}

class Route3 extends StatelessWidget {
  const Route3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f8f9),
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('포인트'),
        ),
      ),
      backgroundColor: Color(0xfff8f8f9),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home_rounded),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Route1()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.food_bank_rounded),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Route2()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.money_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.school_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route4()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.tag_faces_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route5()),
                );},
              ),
            ],
          )
      ),
    );
  }
}

class Route4 extends StatelessWidget {
  const Route4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f8f9),
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('시간표'),
        ),
      ),
      backgroundColor: Color(0xfff8f8f9),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home_rounded),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Route1()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.food_bank_rounded),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Route2()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.money_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route3()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.school_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.tag_faces_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route5()),
                );},
              ),
            ],
          )
      ),
    );
  }
}

class Route5 extends StatelessWidget {
  const Route5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f8f9),
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('프로필'),
        ),
      ),
      backgroundColor: Color(0xfff8f8f9),
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home_rounded),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Route1()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.food_bank_rounded),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Route2()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.money_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route3()),
                );},
              ),
              IconButton(
                icon: Icon(Icons.school_rounded),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Route4()),
                );},
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