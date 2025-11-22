// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:dart_ass/dart_ass.dart';

Future useCachedAssFile() async {
  final ass = Ass(filePath: FFAppState().cachedFilePath);
  await ass.parse();

  final scriptInfo = ScriptInfoStruct(
    title: ass.header?.title ?? '',
    originalScript: ass.header?.scaledBorderAndShadow ?? '',
    playResX: ass.header?.playResX ?? 1920,
    playResY: ass.header?.playResY ?? 1080,
    wrapStyle: ass.header?.wrapStyle ?? 0,
  );

  final styles = ass.styles?.styles.map((style) {
        return StylesStruct(
          alignment: style.alignment,
          fontname: style.fontName,
          fontsize: style.fontSize.toInt(),
          primaryColor: style.color1.toString(),
          outlineColor: style.color3.toString(),
          backColor: style.color4.toString(),
          bold: style.bold,
          italic: style.italic,
          underline: style.underline,
          strikeout: style.strikeOut,
          name: style.styleName,
          scaleX: style.scaleX,
          scaleY: style.scaleY,
          spacing: style.spacing,
        );
      }).toList() ??
      [];

  final events = ass.dialogs?.dialogs.map((dialog) {
        return EventsStruct(
          start: dialog.startTime.toString(),
          end: dialog.endTime.toString(),
          style: dialog.styleName,
          text: dialog.text.getAss(),
        );
      }).toList() ??
      [];

  AssFont font = AssFont(
    styleName: styles[0].name,
    fontName: styles[0].fontname,
    fontSize: styles[0].fontsize.toDouble(),
    bold: styles[0].bold,
    italic: styles[0].italic,
    underline: styles[0].underline,
    strikeOut: styles[0].strikeout,
    scaleX: styles[0].scaleX,
    scaleY: styles[0].scaleY,
    spacing: styles[0].spacing,
  );
  font.init();
  AssFontMetrics? metrics = font.metrics();

  if (metrics != null) {
    FFAppState().update(() {
      FFAppState().currMetrics = MetricsStruct(
        height: metrics.height,
        ascender: metrics.ascent,
        descender: metrics.descent,
      );
    });
  }

  final newAssFile = AssDataStruct(
    scriptInfo: scriptInfo,
    styles: styles,
    events: events,
  );

  FFAppState().update(() {
    FFAppState().currAssFile = newAssFile;
    FFAppState().currLine = events[0];
    FFAppState().screen.currSelectedIndex = 0;
    FFAppState().screen.srcResX = scriptInfo.playResX;
    FFAppState().screen.srcResY = scriptInfo.playResY;
  });
}
