import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentalhealthapp/util/emotion_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi! Ngọc Sơn",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "11 Nov 2022",
                            style: TextStyle(
                                color: Colors.blue[100],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  //Search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel ?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  //4 different
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          //Bad
                          const EmotionFace(
                            emotionFace: '😪',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Bad",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          //Fine
                          const EmotionFace(
                            emotionFace: '😘',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text("Fine",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0)),
                        ],
                      ),
                      Column(
                        children: [
                          //well
                          const EmotionFace(
                            emotionFace: '😆',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text("well",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0)),
                        ],
                      ),
                      Column(
                        children: [
                          //Excellent
                          const EmotionFace(emotionFace: '😍'),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text("Excellent",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Excercises"), Icon(Icons.more_horiz)],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
