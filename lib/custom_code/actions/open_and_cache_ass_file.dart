// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

Future<bool?> openAndCacheAssFile() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.any,
  );

  if (result == null || result.files.isEmpty) return null;

  final filePath = result.files.first.path;
  if (filePath == null) return null;

  final File pickedFile = File(filePath);
  Uint8List bytes = await pickedFile.readAsBytes();

  final Directory tempDir = await getTemporaryDirectory();
  final String cachedFilePath =
      '${tempDir.path}/${pickedFile.uri.pathSegments.last}';

  final File cachedFile = File(cachedFilePath);
  await cachedFile.writeAsBytes(bytes);

  FFAppState().update(() {
    FFAppState().cachedFilePath = cachedFilePath;
  });

  return true;
}
