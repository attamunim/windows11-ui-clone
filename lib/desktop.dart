import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:windows1/widgets/app.dart';

// desktop + TaskBar screen
class Desktop extends StatefulWidget {
  Desktop({Key? key}) : super(key: key);

  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  var count = 0;
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('h:mm a   dd/MM/yyyy');
  final String formatted = formatter.format(now);
  DateTime nowT = new DateTime.now();

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/wallpapers/wallpaper1.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 89,
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: (count == 0)
                      ? Text('')
                      : Container(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.expand_more),
                                        Icon(Icons.check_box_outline_blank),
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                count = 0;
                                              });
                                            },
                                            child: Icon(Icons.close)),
                                      ],
                                    ),
                                  ),
                                  Flexible(flex: 10, child: App()),
                                ],
                              )),
                        ),
                )),
            Expanded(
              flex: 6,
              child: ClipRRect(
                child: BackdropFilter(
                  child: Container(
                    child: Container(
                      child: Row(
                        children: [
                          //Task Bars
                          Flexible(flex: 1, child: Container()),

                          //center TaskBar
                          Flexible(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          print('hello');
                                          setState(() {
                                            if (count == 0) {
                                              count++;
                                            } else
                                              count = 0;
                                          });
                                        },
                                        child: Image.asset(
                                            'assets/icons/start.png')),
                                    GestureDetector(
                                        onTap: () {
                                          print('hello');
                                          setState(() {
                                            if (count == 0) {
                                              count++;
                                            } else
                                              count = 0;
                                          });
                                        },
                                        child: Image.asset(
                                            'assets/icons/browser.png',
                                            width: 23,
                                            height: 23,
                                            fit: BoxFit.scaleDown)),
                                  ],
                                ),
                              )),

                          //right Task Bar
                          Flexible(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                //alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          print('$count');
                                          setState(() {
                                            count++;
                                          });
                                        },
                                        child: Text(
                                          '$formatted',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ))
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    color: Colors.black12,
                  ),
                  filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
