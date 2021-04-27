import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  Animation gap;
  Animation base;
  Animation reverse;

  AnimationController controller;

  bool transparentText = false;

    int amicalColor = 0xFFE4537A,
        romantiqueColor = 0x88DD2A7B,
        sportifColor = 0x888134AF,
        extremeColor = 0x88515BD4,
        textColor = 0xFF000000;


    String amicalText = 'The price of freedom is eternal vigilance.',
           romantiqueText = 'It’s dangerous to go alone, take this!',
           sportifText = 'Wake me when you need me.',
           extremeText = "Space. Space. I'm in space. SPAAAAAAACE!",
           themeText = 'The price of freedom is eternal vigilance.',
           themeTitle = 'Amical',
           themeTextToApply = 'The price of freedom is eternal vigilance.',
           themeTitleToApply = 'Amical';

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 8));
    base = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });

    controller.repeat(reverse: true);
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
                          child: ScaleTap(
                            onTap: () {
                              setState(() {
                                amicalColor = 0xFFE4537A;
                                romantiqueColor = 0x88DD2A7B;
                                sportifColor = 0x888134AF;
                                extremeColor = 0x88515BD4;
                                themeText = amicalText;
                                themeTitle = 'Amical';
                                changeTextAnim();
                              });
                            },
                            scaleMinValue: 0.75,
                            scaleCurve: Curves.easeOut,
                            child: new Container( //AMICAL
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(amicalColor),
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
                          child: ScaleTap(
                            onTap: (){
                              setState(() {
                                amicalColor = 0x88E4537A;
                                romantiqueColor = 0xFFDD2A7B;
                                sportifColor = 0x888134AF;
                                extremeColor = 0x88515BD4;
                                themeText = romantiqueText;
                                themeTitle = 'Romantique';
                                changeTextAnim();
                              });
                            },
                            scaleMinValue: 0.75,
                            scaleCurve: Curves.easeOut,
                            child: new Container( //ROMANTIQUE
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(romantiqueColor),
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
                          child: ScaleTap(
                            onTap: (){
                              setState(() {
                                amicalColor = 0x88E4537A;
                                romantiqueColor = 0x88DD2A7B;
                                sportifColor = 0xFF8134AF;
                                extremeColor = 0x88515BD4;
                                themeText = sportifText;
                                themeTitle = 'Sportif';
                                changeTextAnim();
                              });
                            },
                            scaleMinValue: 0.75,
                            scaleCurve: Curves.easeOut,
                            child: new Container( //SPORTIF
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(sportifColor),
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
                          child: ScaleTap(
                            onTap: (){
                              setState(() {
                                amicalColor = 0x88E4537A;
                                romantiqueColor = 0x88DD2A7B;
                                sportifColor = 0x888134AF;
                                extremeColor = 0xFF515BD4;
                                themeText = extremeText;
                                themeTitle = 'Extrême';
                                changeTextAnim();
                              });
                            },
                            scaleMinValue: 0.75,
                            scaleCurve: Curves.easeOut,
                            child: new Container( //EXTREME
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(extremeColor),
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
                        child: AnimatedDefaultTextStyle(
                          child: Text(themeTitleToApply),
                            style: transparentText ? TextStyle(
                              color: Color(0x00000000),
                              fontFamily: 'Lobster',
                              fontSize: 49,
                            ) : TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Lobster',
                              fontSize: 49,
                            ),
                              duration: Duration(milliseconds: 100),
                              onEnd: (){
                                themeTitleToApply = themeTitle;
                                transparentText = false;
                                },
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
                          child: AnimatedDefaultTextStyle(
                            child: Text(themeTextToApply),
                              style: transparentText ? TextStyle(
                                color: Color(0x00000000),
                                fontFamily: 'Lobster',
                                fontSize: 40,
                              ) : TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: 'Lobster',
                                //fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            duration: Duration(milliseconds: 100),
                            onEnd: (){
                              themeTextToApply = themeText;
                              transparentText = false;
                            },
                            ),
                          ),
                    ],
                  ),
                ),
              ),
              ScaleTap(
                onTap: () {},
                child: new Container(
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
                    child: Center(
                      child: Text('JOUER',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Myriad Arabic',
                          //fontWeight: FontWeight.bold,
                          fontSize: 76.0,
                        ),
                      ),
                    ),
                ),
              )
            ],
          ),
        ),
      );
    }
    void changeTextAnim(){
    if (themeTitle != themeTitleToApply){
    transparentText = true;
    }
    else
      return null;
    }


  }
