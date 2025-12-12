// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_svg/flutter_svg.dart';

String fixSvg(String svg) {
  if (!svg.contains("viewBox")) {
    return svg.replaceFirst(
      "<svg",
      '<svg width="1000" height="100" viewBox="0 0 1000 100"',
    );
  }
  return svg;
}

class SvgViewer extends StatefulWidget {
  const SvgViewer({
    super.key,
    this.width,
    this.height,
    required this.svgData,
  });

  final double? width;
  final double? height;
  final String svgData;

  @override
  State<SvgViewer> createState() => _SvgViewerState();
}

class _SvgViewerState extends State<SvgViewer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 50,
      child: SvgPicture.string(
        fixSvg(widget.svgData),
        fit: BoxFit.contain,
        placeholderBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
