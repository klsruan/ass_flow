// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dart_ass/dart_ass.dart';
import 'package:dart_ass/src/font_collector.dart';
import '/custom_code/ass_instance.dart';
import 'package:path/path.dart' as p;

Future loadSystemFonts() async {
  if (FFAppState().currFonts.isEmpty) {
    List<SystemFont> fonts = await FontCollector.getFontsData();
    final validFonts = fonts.where((font) {
      final ext = p.extension(font.filePath).toLowerCase();
      return ext == ".ttf" || ext == ".otf" || ext == ".ttc";
    }).toList();
    if (validFonts.isNotEmpty) {
      FFAppState().currFonts = validFonts.map((SystemFont font) {
        return SystemFontStruct(
          filePath: font.filePath,
          name: font.name,
        );
      }).toList();
      List<Future<void>> tasks = [];
      for (SystemFontStruct currFont in FFAppState().currFonts) {
        tasks.add(() async {
          AssFont assFont = AssFont(
            styleName: 'Default',
            fontName: currFont.name,
            fontSize: FFAppState().currFontSize,
            bold: false,
            italic: false,
            underline: false,
            strikeOut: false,
            scaleX: 100,
            scaleY: 100,
            spacing: 0,
          );
          await assFont.init();
          fontList.add(assFont);
        }());
      }
      await Future.wait(tasks);
      FFAppState().update(() {});
    }
  }
}
