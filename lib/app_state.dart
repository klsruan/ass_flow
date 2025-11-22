import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_screen')) {
        try {
          final serializedData = prefs.getString('ff_screen') ?? '{}';
          _screen = ScreenManagerStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  ScreenManagerStruct _screen = ScreenManagerStruct.fromSerializableMap(jsonDecode(
      '{\"src_res_x\":\"1280\",\"src_res_y\":\"720\",\"curr_selected_index\":\"0\"}'));
  ScreenManagerStruct get screen => _screen;
  set screen(ScreenManagerStruct value) {
    _screen = value;
    prefs.setString('ff_screen', value.serialize());
  }

  void updateScreenStruct(Function(ScreenManagerStruct) updateFn) {
    updateFn(_screen);
    prefs.setString('ff_screen', _screen.serialize());
  }

  AssDataStruct _currAssFile = AssDataStruct();
  AssDataStruct get currAssFile => _currAssFile;
  set currAssFile(AssDataStruct value) {
    _currAssFile = value;
  }

  void updateCurrAssFileStruct(Function(AssDataStruct) updateFn) {
    updateFn(_currAssFile);
  }

  String _cachedFilePath = '';
  String get cachedFilePath => _cachedFilePath;
  set cachedFilePath(String value) {
    _cachedFilePath = value;
  }

  EventsStruct _currLine = EventsStruct();
  EventsStruct get currLine => _currLine;
  set currLine(EventsStruct value) {
    _currLine = value;
  }

  void updateCurrLineStruct(Function(EventsStruct) updateFn) {
    updateFn(_currLine);
  }

  String _currSvgData = '';
  String get currSvgData => _currSvgData;
  set currSvgData(String value) {
    _currSvgData = value;
  }

  MetricsStruct _currMetrics = MetricsStruct();
  MetricsStruct get currMetrics => _currMetrics;
  set currMetrics(MetricsStruct value) {
    _currMetrics = value;
  }

  void updateCurrMetricsStruct(Function(MetricsStruct) updateFn) {
    updateFn(_currMetrics);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
