// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetricsStruct extends BaseStruct {
  MetricsStruct({
    double? height,
    double? ascender,
    double? descender,
  })  : _height = height,
        _ascender = ascender,
        _descender = descender;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  set height(double? val) => _height = val;

  void incrementHeight(double amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "ascender" field.
  double? _ascender;
  double get ascender => _ascender ?? 0.0;
  set ascender(double? val) => _ascender = val;

  void incrementAscender(double amount) => ascender = ascender + amount;

  bool hasAscender() => _ascender != null;

  // "descender" field.
  double? _descender;
  double get descender => _descender ?? 0.0;
  set descender(double? val) => _descender = val;

  void incrementDescender(double amount) => descender = descender + amount;

  bool hasDescender() => _descender != null;

  static MetricsStruct fromMap(Map<String, dynamic> data) => MetricsStruct(
        height: castToType<double>(data['height']),
        ascender: castToType<double>(data['ascender']),
        descender: castToType<double>(data['descender']),
      );

  static MetricsStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetricsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'height': _height,
        'ascender': _ascender,
        'descender': _descender,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'height': serializeParam(
          _height,
          ParamType.double,
        ),
        'ascender': serializeParam(
          _ascender,
          ParamType.double,
        ),
        'descender': serializeParam(
          _descender,
          ParamType.double,
        ),
      }.withoutNulls;

  static MetricsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetricsStruct(
        height: deserializeParam(
          data['height'],
          ParamType.double,
          false,
        ),
        ascender: deserializeParam(
          data['ascender'],
          ParamType.double,
          false,
        ),
        descender: deserializeParam(
          data['descender'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MetricsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetricsStruct &&
        height == other.height &&
        ascender == other.ascender &&
        descender == other.descender;
  }

  @override
  int get hashCode => const ListEquality().hash([height, ascender, descender]);
}

MetricsStruct createMetricsStruct({
  double? height,
  double? ascender,
  double? descender,
}) =>
    MetricsStruct(
      height: height,
      ascender: ascender,
      descender: descender,
    );
