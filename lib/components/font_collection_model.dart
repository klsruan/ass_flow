import '/flutter_flow/flutter_flow_util.dart';
import 'font_collection_widget.dart' show FontCollectionWidget;
import 'package:flutter/material.dart';

class FontCollectionModel extends FlutterFlowModel<FontCollectionWidget> {
  ///  Local state fields for this component.

  List<int> selectedShowMetrics = [];
  void addToSelectedShowMetrics(int item) => selectedShowMetrics.add(item);
  void removeFromSelectedShowMetrics(int item) =>
      selectedShowMetrics.remove(item);
  void removeAtIndexFromSelectedShowMetrics(int index) =>
      selectedShowMetrics.removeAt(index);
  void insertAtIndexInSelectedShowMetrics(int index, int item) =>
      selectedShowMetrics.insert(index, item);
  void updateSelectedShowMetricsAtIndex(int index, Function(int) updateFn) =>
      selectedShowMetrics[index] = updateFn(selectedShowMetrics[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for text widget.
  FocusNode? textFocusNode;
  TextEditingController? textTextController;
  String? Function(BuildContext, String?)? textTextControllerValidator;
  // State field(s) for fontSize widget.
  double? fontSizeValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFocusNode?.dispose();
    textTextController?.dispose();
  }
}
