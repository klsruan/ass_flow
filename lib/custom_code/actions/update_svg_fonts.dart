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

Future updateSvgFonts(String text) async {
  if (FFAppState().currFonts.isEmpty) return;
  final safeText = text.isEmpty ? 'EMPTY' : text;
  final updatedFonts = List<SystemFontStruct>.from(FFAppState().currFonts);
  for (int i = 0; i < updatedFonts.length; i++) {
    var currFont = updatedFonts[i];
    AssFont font = fontList[i]!;
    font.setSize(FFAppState().currFontSize);
    if (currFont.metrics.height == 0 ||
        currFont.metricsHeightFor != FFAppState().currFontSize) {
      final m = font.metrics();
      if (m != null) {
        currFont.metrics = MetricsStruct(
          height: m.height,
          ascender: m.ascent,
          descender: m.descent,
        );
        currFont.metricsHeightFor = FFAppState().currFontSize;
      }
    }
    currFont.svgData = font.getTextToSvg(safeText) ?? currFont.svgData;
  }
  FFAppState().update(() {
    FFAppState().currFonts = updatedFonts;
  });
}
