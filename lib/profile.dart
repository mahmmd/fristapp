
import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() {
    return new ProfilePageState();
  }
}
class ProfilePageState extends State<ProfilePage>
  with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              constraints: BoxConstraints.expand(height: 454),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        constraints: BoxConstraints.expand(height: 323),
                        margin: EdgeInsets.only(right: 1),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 27, 97, 106),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(62, 0, 0, 0),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              constraints: BoxConstraints.expand(height: 187),
                              margin: EdgeInsets.only(left: 15, top: 46),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 2, top: 7),
                                          child: Image.asset(
                                            "assets/images/menu.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              constraints: BoxConstraints.expand(width: 136.94),
                                              margin: EdgeInsets.only(left: 5, top: 24),
                                              child: Image.asset(
                                                "assets/images/oval.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints.expand(width: 158),
                                                    margin: EdgeInsets.only(top: 65),
                                                    child: Text(
                                                      "Michelle Richardson",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 255, 255, 255),
                                                        fontSize: 33,
                                                        fontFamily: "AGA Balloon بالون ",
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 116, right: 102),
                                        child: Text(
                                          "UI Designer",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 20,
                                            fontFamily: "AGA Balloon بالون ",
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 72, bottom: 26),
                              child: Text(
                                "15",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 33,
                                  fontFamily: "AGA Balloon بالون ",
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Stack(
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Stack(
                                                    children: [
                                                      Row(
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                  children: [
                                                                    Expanded(
                                                                      flex: 1,
                                                                      child: Stack(
                                                                        children: [
                                                                          Row(
                                                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                            children: [
                                                                              Expanded(
                                                                                flex: 1,
                                                                                child: Stack(
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          flex: 1,
                                                                                          child: Stack(
                                                                                            children: [
                                                                                              Row(
                                                                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    flex: 1,
                                                                                                    child: Stack(
                                                                                                      children: [
                                                                                                        Column(
                                                                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                                                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              flex: 1,
                                                                                                              child: Stack(
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        flex: 1,
                                                                                                                        child: Stack(
                                                                                                                          children: [
                                                                                                                            Column(
                                                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                              children: [
                                                                                                                                Expanded(
                                                                                                                                  flex: 1,
                                                                                                                                  child: Stack(
                                                                                                                                    children: [
                                                                                                                                      Row(
                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                        children: [
                                                                                                                                          Expanded(
                                                                                                                                            flex: 1,
                                                                                                                                            child: Stack(
                                                                                                                                              children: [
                                                                                                                                                Column(
                                                                                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                  children: [
                                                                                                                                                    Expanded(
                                                                                                                                                      flex: 1,
                                                                                                                                                      child: Stack(
                                                                                                                                                        children: [
                                                                                                                                                          Row(
                                                                                                                                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                            children: [
                                                                                                                                                              Expanded(
                                                                                                                                                                flex: 1,
                                                                                                                                                                child: Stack(
                                                                                                                                                                  children: [
                                                                                                                                                                    Column(
                                                                                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                                      children: [
                                                                                                                                                                        Expanded(
                                                                                                                                                                          flex: 1,
                                                                                                                                                                          child: Stack(
                                                                                                                                                                            children: [
                                                                                                                                                                              Row(
                                                                                                                                                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                                                children: [
                                                                                                                                                                                  Expanded(
                                                                                                                                                                                    flex: 1,
                                                                                                                                                                                    child: Stack(
                                                                                                                                                                                      children: [
                                                                                                                                                                                        Column(
                                                                                                                                                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                                                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                                                          children: [
                                                                                                                                                                                            Expanded(
                                                                                                                                                                                              flex: 1,
                                                                                                                                                                                              child: Stack(
                                                                                                                                                                                                children: [
                                                                                                                                                                                                  Row(
                                                                                                                                                                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                                                                    children: [
                                                                                                                                                                                                      Expanded(
                                                                                                                                                                                                        flex: 1,
                                                                                                                                                                                                        child: Stack(
                                                                                                                                                                                                          children: [
                                                                                                                                                                                                            Column(
                                                                                                                                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                                                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                                                                              children: [
                                                                                                                                                                                                                Expanded(
                                                                                                                                                                                                                  flex: 1,
                                                                                                                                                                                                                  child: Stack(
                                                                                                                                                                                                                    children: [
                                                                                                                                                                                                                      Row(
                                                                                                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                                                                                                                                        children: [
                                                                                                                                                                                                                          Expanded(
                                                                                                                                                                                                                            flex: 1,
                                                                                                                                                                                                                            child: Row(
                                                                                                                                                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                                                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                                                                                                              children: [
                                                                                                                                                                                                                                Container(
                                                                                                                                                                                                                                  width: 180,
                                                                                                                                                                                                                                  height: 131,
                                                                                                                                                                                                                                  decoration: BoxDecoration(
                                                                                                                                                                                                                                    color: Color.fromARGB(255, 163, 228, 236),
                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                              ],
                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                      Column(
                                                                                                                                                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                                                                                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                                                                                                                                        children: [
                                                                                                                                                                                                                          Container(
                                                                                                                                                                                                                            margin: EdgeInsets.only(right: 22, bottom: 17),
                                                                                                                                                                                                                            child: Text(
                                                                                                                                                                                                                              "Type something",
                                                                                                                                                                                                                              style: TextStyle(
                                                                                                                                                                                                                                color: Color.fromARGB(255, 255, 255, 255),
                                                                                                                                                                                                                                fontSize: 33,
                                                                                                                                                                                                                                fontFamily: "AGA Balloon بالون ",
                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                              textAlign: TextAlign.left,
                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                      Container(),
                                                                                                                                                                                                                    ],
                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                ),
                                                                                                                                                                                                              ],
                                                                                                                                                                                                            ),
                                                                                                                                                                                                            Container(),
                                                                                                                                                                                                          ],
                                                                                                                                                                                                        ),
                                                                                                                                                                                                      ),
                                                                                                                                                                                                      Expanded(
                                                                                                                                                                                                        flex: 1,
                                                                                                                                                                                                        child: Container(),
                                                                                                                                                                                                      ),
                                                                                                                                                                                                    ],
                                                                                                                                                                                                  ),
                                                                                                                                                                                                  Container(),
                                                                                                                                                                                                ],
                                                                                                                                                                                              ),
                                                                                                                                                                                            ),
                                                                                                                                                                                          ],
                                                                                                                                                                                        ),
                                                                                                                                                                                        Container(),
                                                                                                                                                                                      ],
                                                                                                                                                                                    ),
                                                                                                                                                                                  ),
                                                                                                                                                                                  Expanded(
                                                                                                                                                                                    flex: 1,
                                                                                                                                                                                    child: Container(),
                                                                                                                                                                                  ),
                                                                                                                                                                                ],
                                                                                                                                                                              ),
                                                                                                                                                                              Container(),
                                                                                                                                                                            ],
                                                                                                                                                                          ),
                                                                                                                                                                        ),
                                                                                                                                                                      ],
                                                                                                                                                                    ),
                                                                                                                                                                    Container(),
                                                                                                                                                                  ],
                                                                                                                                                                ),
                                                                                                                                                              ),
                                                                                                                                                              Expanded(
                                                                                                                                                                flex: 1,
                                                                                                                                                                child: Container(),
                                                                                                                                                              ),
                                                                                                                                                            ],
                                                                                                                                                          ),
                                                                                                                                                          Container(),
                                                                                                                                                        ],
                                                                                                                                                      ),
                                                                                                                                                    ),
                                                                                                                                                  ],
                                                                                                                                                ),
                                                                                                                                                Container(),
                                                                                                                                              ],
                                                                                                                                            ),
                                                                                                                                          ),
                                                                                                                                          Expanded(
                                                                                                                                            flex: 1,
                                                                                                                                            child: Container(),
                                                                                                                                          ),
                                                                                                                                        ],
                                                                                                                                      ),
                                                                                                                                      Container(),
                                                                                                                                    ],
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                            Container(),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Expanded(
                                                                                                                        flex: 1,
                                                                                                                        child: Container(),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Container(),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Container(),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    flex: 1,
                                                                                                    child: Container(),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              Container(),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Container(),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 1,
                                                                                child: Container(),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Container(),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Container(),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(),
                                                          ),
                                                        ],
                                                      ),
                                                      Container(),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  constraints: BoxConstraints.expand(width: 124),
                                  margin: EdgeInsets.only(top: 258),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(128, 0, 0, 0),
                                        offset: Offset(0, 2),
                                        blurRadius: 4,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/images/action-btn.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 290),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 50,
                                      fontFamily: "Roboto Medium",
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 35, top: 5),
              child: Text(
                "TODOY",
                style: TextStyle(
                  color: Color.fromARGB(255, 27, 97, 106),
                  fontSize: 33,
                  fontFamily: "AGA Balloon بالون ",
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    constraints: BoxConstraints.expand(height: 11),
                    margin: EdgeInsets.only(left: 43),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 27, 97, 106),
                      border: Border.all(
                        color: Color.fromARGB(255, 151, 151, 151),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.5)),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 11,
                        height: 11,
                        margin: EdgeInsets.only(left: 42, bottom: 26),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 0, 0),
                          border: Border.all(
                            color: Color.fromARGB(255, 151, 151, 151),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5.5)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 31, bottom: 4),
                        child: Text(
                          "C#",
                          style: TextStyle(
                            color: Color.fromARGB(255, 27, 97, 106),
                            fontSize: 33,
                            fontFamily: "AGA Balloon بالون ",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 18, bottom: 15),
                        child: Image.asset(
                          "assets/images/arrow.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 11,
                        height: 11,
                        margin: EdgeInsets.only(left: 43),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 162, 227, 236),
                          border: Border.all(
                            color: Color.fromARGB(255, 151, 151, 151),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5.5)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 31, bottom: 4),
                        child: Text(
                          "Java Android",
                          style: TextStyle(
                            color: Color.fromARGB(255, 27, 97, 106),
                            fontSize: 33,
                            fontFamily: "AGA Balloon بالون ",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 144),
                              child: Image.asset(
                                "assets/images/arrow.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Stack(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 46, bottom: 3),
                                        child: Image.asset(
                                          "assets/images/line-2.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 11,
                                        height: 11,
                                        margin: EdgeInsets.only(left: 43, bottom: 26),
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          border: Border.all(
                                            color: Color.fromARGB(255, 151, 151, 151),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(5.5)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 29, bottom: 19),
                                        child: Text(
                                          "Unity",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 27, 97, 106),
                                            fontSize: 33,
                                            fontFamily: "AGA Balloon بالون ",
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 12, bottom: 26),
                                        child: Image.asset(
                                          "assets/images/arrow.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}