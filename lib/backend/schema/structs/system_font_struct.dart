// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SystemFontStruct extends BaseStruct {
  SystemFontStruct({
    String? filePath,
    String? name,
    MetricsStruct? metrics,
    String? svgData,
    int? index,
    double? metricsHeightFor,
  })  : _filePath = filePath,
        _name = name,
        _metrics = metrics,
        _svgData = svgData,
        _index = index,
        _metricsHeightFor = metricsHeightFor;

  // "filePath" field.
  String? _filePath;
  String get filePath => _filePath ?? '';
  set filePath(String? val) => _filePath = val;

  bool hasFilePath() => _filePath != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "metrics" field.
  MetricsStruct? _metrics;
  MetricsStruct get metrics => _metrics ?? MetricsStruct();
  set metrics(MetricsStruct? val) => _metrics = val;

  void updateMetrics(Function(MetricsStruct) updateFn) {
    updateFn(_metrics ??= MetricsStruct());
  }

  bool hasMetrics() => _metrics != null;

  // "svgData" field.
  String? _svgData;
  String get svgData => _svgData ?? '';
  set svgData(String? val) => _svgData = val;

  bool hasSvgData() => _svgData != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "metricsHeightFor" field.
  double? _metricsHeightFor;
  double get metricsHeightFor => _metricsHeightFor ?? 0.0;
  set metricsHeightFor(double? val) => _metricsHeightFor = val;

  void incrementMetricsHeightFor(double amount) =>
      metricsHeightFor = metricsHeightFor + amount;

  bool hasMetricsHeightFor() => _metricsHeightFor != null;

  static SystemFontStruct fromMap(Map<String, dynamic> data) =>
      SystemFontStruct(
        filePath: data['filePath'] as String?,
        name: data['name'] as String?,
        metrics: data['metrics'] is MetricsStruct
            ? data['metrics']
            : MetricsStruct.maybeFromMap(data['metrics']),
        svgData: data['svgData'] as String?,
        index: castToType<int>(data['index']),
        metricsHeightFor: castToType<double>(data['metricsHeightFor']),
      );

  static SystemFontStruct? maybeFromMap(dynamic data) => data is Map
      ? SystemFontStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'filePath': _filePath,
        'name': _name,
        'metrics': _metrics?.toMap(),
        'svgData': _svgData,
        'index': _index,
        'metricsHeightFor': _metricsHeightFor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'filePath': serializeParam(
          _filePath,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'metrics': serializeParam(
          _metrics,
          ParamType.DataStruct,
        ),
        'svgData': serializeParam(
          _svgData,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'metricsHeightFor': serializeParam(
          _metricsHeightFor,
          ParamType.double,
        ),
      }.withoutNulls;

  static SystemFontStruct fromSerializableMap(Map<String, dynamic> data) =>
      SystemFontStruct(
        filePath: deserializeParam(
          data['filePath'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        metrics: deserializeStructParam(
          data['metrics'],
          ParamType.DataStruct,
          false,
          structBuilder: MetricsStruct.fromSerializableMap,
        ),
        svgData: deserializeParam(
          data['svgData'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        metricsHeightFor: deserializeParam(
          data['metricsHeightFor'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SystemFontStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SystemFontStruct &&
        filePath == other.filePath &&
        name == other.name &&
        metrics == other.metrics &&
        svgData == other.svgData &&
        index == other.index &&
        metricsHeightFor == other.metricsHeightFor;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([filePath, name, metrics, svgData, index, metricsHeightFor]);
}

SystemFontStruct createSystemFontStruct({
  String? filePath,
  String? name,
  MetricsStruct? metrics,
  String? svgData,
  int? index,
  double? metricsHeightFor,
}) =>
    SystemFontStruct(
      filePath: filePath,
      name: name,
      metrics: metrics ?? MetricsStruct(),
      svgData: svgData,
      index: index,
      metricsHeightFor: metricsHeightFor,
    );
