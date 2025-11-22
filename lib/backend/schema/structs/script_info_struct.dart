// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScriptInfoStruct extends BaseStruct {
  ScriptInfoStruct({
    String? title,
    String? originalScript,
    int? playResX,
    int? playResY,
    int? wrapStyle,
  })  : _title = title,
        _originalScript = originalScript,
        _playResX = playResX,
        _playResY = playResY,
        _wrapStyle = wrapStyle;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "original_script" field.
  String? _originalScript;
  String get originalScript => _originalScript ?? '';
  set originalScript(String? val) => _originalScript = val;

  bool hasOriginalScript() => _originalScript != null;

  // "play_res_x" field.
  int? _playResX;
  int get playResX => _playResX ?? 0;
  set playResX(int? val) => _playResX = val;

  void incrementPlayResX(int amount) => playResX = playResX + amount;

  bool hasPlayResX() => _playResX != null;

  // "play_res_y" field.
  int? _playResY;
  int get playResY => _playResY ?? 0;
  set playResY(int? val) => _playResY = val;

  void incrementPlayResY(int amount) => playResY = playResY + amount;

  bool hasPlayResY() => _playResY != null;

  // "wrap_style" field.
  int? _wrapStyle;
  int get wrapStyle => _wrapStyle ?? 0;
  set wrapStyle(int? val) => _wrapStyle = val;

  void incrementWrapStyle(int amount) => wrapStyle = wrapStyle + amount;

  bool hasWrapStyle() => _wrapStyle != null;

  static ScriptInfoStruct fromMap(Map<String, dynamic> data) =>
      ScriptInfoStruct(
        title: data['title'] as String?,
        originalScript: data['original_script'] as String?,
        playResX: castToType<int>(data['play_res_x']),
        playResY: castToType<int>(data['play_res_y']),
        wrapStyle: castToType<int>(data['wrap_style']),
      );

  static ScriptInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? ScriptInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'original_script': _originalScript,
        'play_res_x': _playResX,
        'play_res_y': _playResY,
        'wrap_style': _wrapStyle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'original_script': serializeParam(
          _originalScript,
          ParamType.String,
        ),
        'play_res_x': serializeParam(
          _playResX,
          ParamType.int,
        ),
        'play_res_y': serializeParam(
          _playResY,
          ParamType.int,
        ),
        'wrap_style': serializeParam(
          _wrapStyle,
          ParamType.int,
        ),
      }.withoutNulls;

  static ScriptInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ScriptInfoStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        originalScript: deserializeParam(
          data['original_script'],
          ParamType.String,
          false,
        ),
        playResX: deserializeParam(
          data['play_res_x'],
          ParamType.int,
          false,
        ),
        playResY: deserializeParam(
          data['play_res_y'],
          ParamType.int,
          false,
        ),
        wrapStyle: deserializeParam(
          data['wrap_style'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ScriptInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScriptInfoStruct &&
        title == other.title &&
        originalScript == other.originalScript &&
        playResX == other.playResX &&
        playResY == other.playResY &&
        wrapStyle == other.wrapStyle;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, originalScript, playResX, playResY, wrapStyle]);
}

ScriptInfoStruct createScriptInfoStruct({
  String? title,
  String? originalScript,
  int? playResX,
  int? playResY,
  int? wrapStyle,
}) =>
    ScriptInfoStruct(
      title: title,
      originalScript: originalScript,
      playResX: playResX,
      playResY: playResY,
      wrapStyle: wrapStyle,
    );
