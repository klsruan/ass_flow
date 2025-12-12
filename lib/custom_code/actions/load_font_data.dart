// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dart_ass/dart_ass.dart';
import '/custom_code/ass_instance.dart';

Future loadFontData(int fontIndex, String text) async {
  final fontStruct = FFAppState().currFonts[fontIndex];
  AssFont font = fontList[fontIndex]!;
  font.setSize(FFAppState().currFontSize);
  MetricsStruct? newMetrics;
  String? newSvg;
  if (fontStruct.metrics.height <= 0) {
    final m = font.metrics();
    if (m != null) {
      newMetrics = MetricsStruct(
        height: m.height,
        ascender: m.ascent,
        descender: m.descent,
      );
    }
  }
  newSvg = font.getTextToSvg(text.isEmpty ? 'EMPTY' : text);
  FFAppState().update(() {
    if (newMetrics != null) {
      FFAppState().currFonts[fontIndex].metrics = newMetrics;
    }
    if (newSvg != null) {
      FFAppState().currFonts[fontIndex].svgData = newSvg;
    }
  });
}
