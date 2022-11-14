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
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi! Ngọc Sơn",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
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
                        padding: const EdgeInsets.all(16.0),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
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
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "How do you feel ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
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
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text(
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
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text("Fine",
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
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text("well",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0)),
                        ],
                      ),
                      Column(
                        children: [
                          //Excellent
                          const EmotionFace(emotionFace: '😍'),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text("Excellent",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Center(
                    child: Column(
                      children: [
                        //Excercises heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Excercises",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            const Icon(Icons.more_horiz)
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: const Icon(Icons.favorite)),
                                    const SizedBox(
                                      width: 12.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Speaking skills",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        const Text("16 Excercises",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey))
                                      ],
                                    ),
                                    const Icon(Icons.more_horiz)
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
