// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssDataStruct extends BaseStruct {
  AssDataStruct({
    ScriptInfoStruct? scriptInfo,
    List<StylesStruct>? styles,
    List<EventsStruct>? events,
  })  : _scriptInfo = scriptInfo,
        _styles = styles,
        _events = events;

  // "script_info" field.
  ScriptInfoStruct? _scriptInfo;
  ScriptInfoStruct get scriptInfo => _scriptInfo ?? ScriptInfoStruct();
  set scriptInfo(ScriptInfoStruct? val) => _scriptInfo = val;

  void updateScriptInfo(Function(ScriptInfoStruct) updateFn) {
    updateFn(_scriptInfo ??= ScriptInfoStruct());
  }

  bool hasScriptInfo() => _scriptInfo != null;

  // "styles" field.
  List<StylesStruct>? _styles;
  List<StylesStruct> get styles => _styles ?? const [];
  set styles(List<StylesStruct>? val) => _styles = val;

  void updateStyles(Function(List<StylesStruct>) updateFn) {
    updateFn(_styles ??= []);
  }

  bool hasStyles() => _styles != null;

  // "events" field.
  List<EventsStruct>? _events;
  List<EventsStruct> get events => _events ?? const [];
  set events(List<EventsStruct>? val) => _events = val;

  void updateEvents(Function(List<EventsStruct>) updateFn) {
    updateFn(_events ??= []);
  }

  bool hasEvents() => _events != null;

  static AssDataStruct fromMap(Map<String, dynamic> data) => AssDataStruct(
        scriptInfo: data['script_info'] is ScriptInfoStruct
            ? data['script_info']
            : ScriptInfoStruct.maybeFromMap(data['script_info']),
        styles: getStructList(
          data['styles'],
          StylesStruct.fromMap,
        ),
        events: getStructList(
          data['events'],
          EventsStruct.fromMap,
        ),
      );

  static AssDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? AssDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'script_info': _scriptInfo?.toMap(),
        'styles': _styles?.map((e) => e.toMap()).toList(),
        'events': _events?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'script_info': serializeParam(
          _scriptInfo,
          ParamType.DataStruct,
        ),
        'styles': serializeParam(
          _styles,
          ParamType.DataStruct,
          isList: true,
        ),
        'events': serializeParam(
          _events,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AssDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssDataStruct(
        scriptInfo: deserializeStructParam(
          data['script_info'],
          ParamType.DataStruct,
          false,
          structBuilder: ScriptInfoStruct.fromSerializableMap,
        ),
        styles: deserializeStructParam<StylesStruct>(
          data['styles'],
          ParamType.DataStruct,
          true,
          structBuilder: StylesStruct.fromSerializableMap,
        ),
        events: deserializeStructParam<EventsStruct>(
          data['events'],
          ParamType.DataStruct,
          true,
          structBuilder: EventsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AssDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AssDataStruct &&
        scriptInfo == other.scriptInfo &&
        listEquality.equals(styles, other.styles) &&
        listEquality.equals(events, other.events);
  }

  @override
  int get hashCode => const ListEquality().hash([scriptInfo, styles, events]);
}

AssDataStruct createAssDataStruct({
  ScriptInfoStruct? scriptInfo,
}) =>
    AssDataStruct(
      scriptInfo: scriptInfo ?? ScriptInfoStruct(),
    );
