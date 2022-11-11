import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmotionFace extends StatelessWidget {
  final String emotionFace;
  const EmotionFace({super.key, required this.emotionFace});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12.0)),
        padding: EdgeInsets.all(16.0),
        child: Text(emotionFace,
            style: TextStyle(
              fontSize: 28.0,
            )));
  }
}
