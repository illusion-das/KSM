import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:transition/transition.dart';

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
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
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
                  width: 75,
                  height: 70,
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/asmlogore.png',
                    width: 90,
                  ),
                ),
              ],
            ),
            Container(
              width: 500,
              height: 140,
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
              decoration: BoxDecoration(
                color: Color(0xff0d6eb8),
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 300, 0),
                    child: Text(
                      '자산',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff)),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Image.asset(
                          'assets/title.png',
                          width: 60,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Text(
                          '2400',
                          style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text(
                          '포인트',
                          style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 120,
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.fromLTRB(5, 0, 15, 15),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
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
                    margin: EdgeInsets.fromLTRB(25, 5, 15, 15),
                    child: Text(
                      '유용한 기능',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c4c4d)),
                    )),
              ],
            ),
            Center(
              child: Container(
                color: Color(0xfff8f8f9),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(18, 0, 3, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(3, 0, 3, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(18, 0, 3, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(3, 0, 3, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(25, 5, 15, 15),
                    child: Text(
                      '추천',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4c4c4d)),
                    )),
              ],
            ),
            Container(
              height: 90,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
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
                context,
                MaterialPageRoute(builder: (context) => Route2()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.money_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route3()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.school_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route4()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.tag_faces_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route5()),
              );
            },
          ),
        ],
      )),
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
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Route1()),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route1()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.food_bank_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.money_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route3()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.school_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route4()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.tag_faces_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route5()),
              );
            },
          ),
        ],
      )),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route1()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.food_bank_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route2()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.money_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.school_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route4()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.tag_faces_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route5()),
              );
            },
          ),
        ],
      )),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route1()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.food_bank_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route2()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.money_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route3()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.school_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.tag_faces_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route5()),
              );
            },
          ),
        ],
      )),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route1()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.food_bank_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route2()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.money_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route3()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.school_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Route4()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.tag_faces_rounded),
            onPressed: () {},
          ),
        ],
      )),
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
