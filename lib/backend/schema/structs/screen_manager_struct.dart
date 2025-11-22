// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScreenManagerStruct extends BaseStruct {
  ScreenManagerStruct({
    int? srcResX,
    int? srcResY,
    int? currSelectedIndex,
  })  : _srcResX = srcResX,
        _srcResY = srcResY,
        _currSelectedIndex = currSelectedIndex;

  // "src_res_x" field.
  int? _srcResX;
  int get srcResX => _srcResX ?? 0;
  set srcResX(int? val) => _srcResX = val;

  void incrementSrcResX(int amount) => srcResX = srcResX + amount;

  bool hasSrcResX() => _srcResX != null;

  // "src_res_y" field.
  int? _srcResY;
  int get srcResY => _srcResY ?? 0;
  set srcResY(int? val) => _srcResY = val;

  void incrementSrcResY(int amount) => srcResY = srcResY + amount;

  bool hasSrcResY() => _srcResY != null;

  // "curr_selected_index" field.
  int? _currSelectedIndex;
  int get currSelectedIndex => _currSelectedIndex ?? 0;
  set currSelectedIndex(int? val) => _currSelectedIndex = val;

  void incrementCurrSelectedIndex(int amount) =>
      currSelectedIndex = currSelectedIndex + amount;

  bool hasCurrSelectedIndex() => _currSelectedIndex != null;

  static ScreenManagerStruct fromMap(Map<String, dynamic> data) =>
      ScreenManagerStruct(
        srcResX: castToType<int>(data['src_res_x']),
        srcResY: castToType<int>(data['src_res_y']),
        currSelectedIndex: castToType<int>(data['curr_selected_index']),
      );

  static ScreenManagerStruct? maybeFromMap(dynamic data) => data is Map
      ? ScreenManagerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'src_res_x': _srcResX,
        'src_res_y': _srcResY,
        'curr_selected_index': _currSelectedIndex,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'src_res_x': serializeParam(
          _srcResX,
          ParamType.int,
        ),
        'src_res_y': serializeParam(
          _srcResY,
          ParamType.int,
        ),
        'curr_selected_index': serializeParam(
          _currSelectedIndex,
          ParamType.int,
        ),
      }.withoutNulls;

  static ScreenManagerStruct fromSerializableMap(Map<String, dynamic> data) =>
      ScreenManagerStruct(
        srcResX: deserializeParam(
          data['src_res_x'],
          ParamType.int,
          false,
        ),
        srcResY: deserializeParam(
          data['src_res_y'],
          ParamType.int,
          false,
        ),
        currSelectedIndex: deserializeParam(
          data['curr_selected_index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ScreenManagerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScreenManagerStruct &&
        srcResX == other.srcResX &&
        srcResY == other.srcResY &&
        currSelectedIndex == other.currSelectedIndex;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([srcResX, srcResY, currSelectedIndex]);
}

ScreenManagerStruct createScreenManagerStruct({
  int? srcResX,
  int? srcResY,
  int? currSelectedIndex,
}) =>
    ScreenManagerStruct(
      srcResX: srcResX,
      srcResY: srcResY,
      currSelectedIndex: currSelectedIndex,
    );
