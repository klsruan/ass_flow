// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsStruct extends BaseStruct {
  EventsStruct({
    String? start,
    String? end,
    String? style,
    String? text,
    bool? commented,
  })  : _start = start,
        _end = end,
        _style = style,
        _text = text,
        _commented = commented;

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  set start(String? val) => _start = val;

  bool hasStart() => _start != null;

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  set end(String? val) => _end = val;

  bool hasEnd() => _end != null;

  // "style" field.
  String? _style;
  String get style => _style ?? '';
  set style(String? val) => _style = val;

  bool hasStyle() => _style != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "commented" field.
  bool? _commented;
  bool get commented => _commented ?? false;
  set commented(bool? val) => _commented = val;

  bool hasCommented() => _commented != null;

  static EventsStruct fromMap(Map<String, dynamic> data) => EventsStruct(
        start: data['start'] as String?,
        end: data['end'] as String?,
        style: data['style'] as String?,
        text: data['text'] as String?,
        commented: data['commented'] as bool?,
      );

  static EventsStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'start': _start,
        'end': _end,
        'style': _style,
        'text': _text,
        'commented': _commented,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start': serializeParam(
          _start,
          ParamType.String,
        ),
        'end': serializeParam(
          _end,
          ParamType.String,
        ),
        'style': serializeParam(
          _style,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'commented': serializeParam(
          _commented,
          ParamType.bool,
        ),
      }.withoutNulls;

  static EventsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventsStruct(
        start: deserializeParam(
          data['start'],
          ParamType.String,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.String,
          false,
        ),
        style: deserializeParam(
          data['style'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        commented: deserializeParam(
          data['commented'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'EventsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventsStruct &&
        start == other.start &&
        end == other.end &&
        style == other.style &&
        text == other.text &&
        commented == other.commented;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([start, end, style, text, commented]);
}

EventsStruct createEventsStruct({
  String? start,
  String? end,
  String? style,
  String? text,
  bool? commented,
}) =>
    EventsStruct(
      start: start,
      end: end,
      style: style,
      text: text,
      commented: commented,
    );
