import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for currText widget.
  FocusNode? currTextFocusNode;
  TextEditingController? currTextTextController;
  String? Function(BuildContext, String?)? currTextTextControllerValidator;
  // Stores action output result for [Custom Action - openAndCacheAssFile] action in Column widget.
  bool? picked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    currTextFocusNode?.dispose();
    currTextTextController?.dispose();
  }
}
