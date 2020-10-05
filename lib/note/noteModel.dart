import 'package:flutter/cupertino.dart';

import '../BaseModel.dart';

class Note{
  int id;
  String title;
  String content;
  String color;

  // method to override the default implementation of dart object above
  //useful for debug console printing
String toString(){
  return 'id = $id, title = $title, content = $content, color = $color';
}
}

class NotesModel extends BaseModel{
  Color color;

  void setColor(Color inColor){
    color = inColor;
    notifyListeners();
  }
}
NotesModel notesModel = NotesModel();