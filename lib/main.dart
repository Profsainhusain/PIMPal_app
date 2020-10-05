import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'utils.dart' as utils;
import 'pimpal.dart';


void main() {
  startMeUp() async{
    Directory docsDir =
        await getApplicationDocumentsDirectory();
    utils.docsDir = docsDir;
    runApp(MyPimPal());
  }
  startMeUp();
}

