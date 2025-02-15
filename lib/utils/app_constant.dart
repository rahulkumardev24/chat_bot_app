import 'dart:math';

import 'package:flutter/material.dart';

class AppConstant {
  static final List<Map<String , dynamic>> defaultQues = [

    {
      "title" : "Most Popular" ,
      "question" : [
        {
          "icon" : Icons.ac_unit ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "What is AI"
        } ,
        {
          "icon" : Icons.emoji_emotions_rounded ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "Tell me a jock"
        } ,

        {
          "icon" : Icons.computer ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "Explain me the concept of Machine Learning"
        } ,

        {
          "icon" : Icons.cloud ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "How does Climate change work"
        }
      ]
    } ,

    {
      "title" : "Trending" ,
      "question" : [
        {
          "icon" : Icons.ac_unit ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "What is AI"
        } ,
        {
          "icon" : Icons.emoji_emotions_rounded ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "Tell me a jock"
        } ,

        {
          "icon" : Icons.computer ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "Explain me the concept of Machine Learning"
        } ,


      ]
    } ,

    {
      "title" : "Instagram" ,
      "question" : [
        {
          "icon" : Icons.ac_unit ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "What is AI"
        } ,
        {
          "icon" : Icons.emoji_emotions_rounded ,
          "color" : Colors.primaries[Random().nextInt(Colors.primaries.length - 1 ) ],
          "ques" :  "Tell me a jock"
        } ,

      ]
    }

  ] ;


}