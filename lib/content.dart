import 'package:flutter/material.dart';
import 'package:ohio_constitution_app/Lists.dart';
import 'package:ohio_constitution_app/details.dart';

class ContentPage extends StatelessWidget {
  final int index;
  final int index2;

  ContentPage(this.index, this.index2);

  @override
  Widget build(BuildContext context){
 
    return Scaffold(
      appBar: AppBar(title: (Text(SecondMenuTitlesList[index][index2] + ' ' + SecondMenuSubtitlesList[index][index2],)),
      ),
      body: 

  Text(Content[SecondMenuTitlesList[index][index2]]?? '', style: TextStyle(fontSize: 21),)

      );
  }
}