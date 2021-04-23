import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  Animation gap;
  Animation base;
  Animation reverse;
  AnimationController controller;

    int amicalColor = 0xFFE4537A,
        romantiqueColor = 0x88DD2A7B,
        sportifColor = 0x888134AF,
        extremeColor = 0x88515BD4;

    String amicalText = 'The price of freedom is eternal vigilance.',
           romantiqueText = 'It’s dangerous to go alone, take this!',
           sportifText = 'Wake me when you need me.',
           extremeText = "Space. Space. I'm in space. SPAAAAAAACE!",
           themeText = 'The price of freedom is eternal vigilance.',
           themeTitle = 'Amical';

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 6));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  /// Dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: RichText(
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'Rage',
                fontSize: 45.0,
              ),
              children: <TextSpan>[
               TextSpan(
                 text: 'Whi', style: TextStyle(color: Color(0xFF5851DB)),
               ),
               TextSpan(
                 text: 'sper', style: TextStyle(color: Color(0xFFC13584)),
               ),
              ]
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: new Container(
          color: Colors.white,
          margin: EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 20,
                      color: Color(amicalColor),
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Container( //AMICAL
                            height: 100,
                            width: 100,
                            child: new TextButton(
                              onPressed: () {
                                setState(() {
                                  amicalColor = 0xFFE4537A;
                                  romantiqueColor = 0x88DD2A7B;
                                  sportifColor = 0x888134AF;
                                  extremeColor = 0x88515BD4;
                                  themeText = amicalText;
                                  themeTitle = 'Amical';
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    new Color(amicalColor)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 20,
                      color: Color(romantiqueColor),
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Container( //ROMANTIQUE
                            height: 100,
                            width: 100,
                            child: new TextButton(
                              onPressed: () {
                                setState(() {
                                  amicalColor = 0x88E4537A;
                                  romantiqueColor = 0xFFDD2A7B;
                                  sportifColor = 0x888134AF;
                                  extremeColor = 0x88515BD4;
                                  themeText = romantiqueText;
                                  themeTitle = 'Romantique';
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    new Color(romantiqueColor)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 20,
                      color: Color(sportifColor),
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Container( //SPORTIF
                            height: 100,
                            width: 100,
                            child: new TextButton(
                              onPressed: (){
                                setState(() {
                                  amicalColor = 0x88E4537A;
                                  romantiqueColor = 0x88DD2A7B;
                                  sportifColor = 0xFF8134AF;
                                  extremeColor = 0x88515BD4;
                                  themeText = sportifText;
                                  themeTitle = 'Sportif';
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  new Color(sportifColor)),
                                shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                    )
                                  ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RotationTransition(
                    turns: base,
                    child: DashedCircle(
                      gapSize: gap.value,
                      dashes: 20,
                      color: Color(extremeColor),
                      child: RotationTransition(
                        turns: reverse,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Container( //EXTREME
                            height: 100,
                            width: 100,
                            child: new TextButton(
                              onPressed: (){
                                setState(() {
                                  amicalColor = 0x88E4537A;
                                  romantiqueColor = 0x88DD2A7B;
                                  sportifColor = 0x888134AF;
                                  extremeColor = 0xFF515BD4;
                                  themeText = extremeText;
                                  themeTitle = 'Extrême';
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    new Color(extremeColor)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              new Card(
                color: Colors.white,
                elevation: 5.0,
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: new Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 1.5,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.all(30.0),
                        child: new Text(themeTitle,
                          style: TextStyle(
                            fontFamily: 'Lobster',
                            //fontWeight: FontWeight.bold,
                            fontSize: 49,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.5,
                          width: 300.0,
                          color: Colors.black,
                        ),
                      ),
                      new Container(
                          margin: EdgeInsets.only(
                              left: 30, top: 50, right: 30, bottom: 50),
                          child: new Text(
                            themeText,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lobster',
                              //fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),)
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                height: 105.0,
                width: 350.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [
                        0.01,
                        0.2,
                        0.5,
                        0.9,
                      ],
                      colors: [
                        Color(0xFFFEDA77),
                        Color(0xFFDD2A7B),
                        Color(0xFF8134AF),
                        Color(0xFF515BD4)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(45.0)
                ),
                  child: new TextButton(
                      onPressed: () {

                      },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(width: 0, color: Colors.grey)),
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0),
                          )
                      ),
                    ),
                    child: new Text('JOUER',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Myriad Arabic',
                        //fontWeight: FontWeight.bold,
                        fontSize: 76.0,
                      ),
                    ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  void changeTheme() {
    }
