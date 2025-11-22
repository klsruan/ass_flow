// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StylesStruct extends BaseStruct {
  StylesStruct({
    String? name,
    String? fontname,
    int? fontsize,
    String? primaryColor,
    String? outlineColor,
    String? backColor,
    bool? bold,
    bool? italic,
    bool? underline,
    bool? strikeout,
    int? alignment,
    double? scaleX,
    double? scaleY,
    double? spacing,
  })  : _name = name,
        _fontname = fontname,
        _fontsize = fontsize,
        _primaryColor = primaryColor,
        _outlineColor = outlineColor,
        _backColor = backColor,
        _bold = bold,
        _italic = italic,
        _underline = underline,
        _strikeout = strikeout,
        _alignment = alignment,
        _scaleX = scaleX,
        _scaleY = scaleY,
        _spacing = spacing;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "fontname" field.
  String? _fontname;
  String get fontname => _fontname ?? '';
  set fontname(String? val) => _fontname = val;

  bool hasFontname() => _fontname != null;

  // "fontsize" field.
  int? _fontsize;
  int get fontsize => _fontsize ?? 0;
  set fontsize(int? val) => _fontsize = val;

  void incrementFontsize(int amount) => fontsize = fontsize + amount;

  bool hasFontsize() => _fontsize != null;

  // "primary_color" field.
  String? _primaryColor;
  String get primaryColor => _primaryColor ?? '';
  set primaryColor(String? val) => _primaryColor = val;

  bool hasPrimaryColor() => _primaryColor != null;

  // "outline_color" field.
  String? _outlineColor;
  String get outlineColor => _outlineColor ?? '';
  set outlineColor(String? val) => _outlineColor = val;

  bool hasOutlineColor() => _outlineColor != null;

  // "back_color" field.
  String? _backColor;
  String get backColor => _backColor ?? '';
  set backColor(String? val) => _backColor = val;

  bool hasBackColor() => _backColor != null;

  // "bold" field.
  bool? _bold;
  bool get bold => _bold ?? false;
  set bold(bool? val) => _bold = val;

  bool hasBold() => _bold != null;

  // "italic" field.
  bool? _italic;
  bool get italic => _italic ?? false;
  set italic(bool? val) => _italic = val;

  bool hasItalic() => _italic != null;

  // "underline" field.
  bool? _underline;
  bool get underline => _underline ?? false;
  set underline(bool? val) => _underline = val;

  bool hasUnderline() => _underline != null;

  // "strikeout" field.
  bool? _strikeout;
  bool get strikeout => _strikeout ?? false;
  set strikeout(bool? val) => _strikeout = val;

  bool hasStrikeout() => _strikeout != null;

  // "alignment" field.
  int? _alignment;
  int get alignment => _alignment ?? 0;
  set alignment(int? val) => _alignment = val;

  void incrementAlignment(int amount) => alignment = alignment + amount;

  bool hasAlignment() => _alignment != null;

  // "scaleX" field.
  double? _scaleX;
  double get scaleX => _scaleX ?? 0.0;
  set scaleX(double? val) => _scaleX = val;

  void incrementScaleX(double amount) => scaleX = scaleX + amount;

  bool hasScaleX() => _scaleX != null;

  // "scaleY" field.
  double? _scaleY;
  double get scaleY => _scaleY ?? 0.0;
  set scaleY(double? val) => _scaleY = val;

  void incrementScaleY(double amount) => scaleY = scaleY + amount;

  bool hasScaleY() => _scaleY != null;

  // "spacing" field.
  double? _spacing;
  double get spacing => _spacing ?? 0.0;
  set spacing(double? val) => _spacing = val;

  void incrementSpacing(double amount) => spacing = spacing + amount;

  bool hasSpacing() => _spacing != null;

  static StylesStruct fromMap(Map<String, dynamic> data) => StylesStruct(
        name: data['name'] as String?,
        fontname: data['fontname'] as String?,
        fontsize: castToType<int>(data['fontsize']),
        primaryColor: data['primary_color'] as String?,
        outlineColor: data['outline_color'] as String?,
        backColor: data['back_color'] as String?,
        bold: data['bold'] as bool?,
        italic: data['italic'] as bool?,
        underline: data['underline'] as bool?,
        strikeout: data['strikeout'] as bool?,
        alignment: castToType<int>(data['alignment']),
        scaleX: castToType<double>(data['scaleX']),
        scaleY: castToType<double>(data['scaleY']),
        spacing: castToType<double>(data['spacing']),
      );

  static StylesStruct? maybeFromMap(dynamic data) =>
      data is Map ? StylesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'fontname': _fontname,
        'fontsize': _fontsize,
        'primary_color': _primaryColor,
        'outline_color': _outlineColor,
        'back_color': _backColor,
        'bold': _bold,
        'italic': _italic,
        'underline': _underline,
        'strikeout': _strikeout,
        'alignment': _alignment,
        'scaleX': _scaleX,
        'scaleY': _scaleY,
        'spacing': _spacing,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'fontname': serializeParam(
          _fontname,
          ParamType.String,
        ),
        'fontsize': serializeParam(
          _fontsize,
          ParamType.int,
        ),
        'primary_color': serializeParam(
          _primaryColor,
          ParamType.String,
        ),
        'outline_color': serializeParam(
          _outlineColor,
          ParamType.String,
        ),
        'back_color': serializeParam(
          _backColor,
          ParamType.String,
        ),
        'bold': serializeParam(
          _bold,
          ParamType.bool,
        ),
        'italic': serializeParam(
          _italic,
          ParamType.bool,
        ),
        'underline': serializeParam(
          _underline,
          ParamType.bool,
        ),
        'strikeout': serializeParam(
          _strikeout,
          ParamType.bool,
        ),
        'alignment': serializeParam(
          _alignment,
          ParamType.int,
        ),
        'scaleX': serializeParam(
          _scaleX,
          ParamType.double,
        ),
        'scaleY': serializeParam(
          _scaleY,
          ParamType.double,
        ),
        'spacing': serializeParam(
          _spacing,
          ParamType.double,
        ),
      }.withoutNulls;

  static StylesStruct fromSerializableMap(Map<String, dynamic> data) =>
      StylesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        fontname: deserializeParam(
          data['fontname'],
          ParamType.String,
          false,
        ),
        fontsize: deserializeParam(
          data['fontsize'],
          ParamType.int,
          false,
        ),
        primaryColor: deserializeParam(
          data['primary_color'],
          ParamType.String,
          false,
        ),
        outlineColor: deserializeParam(
          data['outline_color'],
          ParamType.String,
          false,
        ),
        backColor: deserializeParam(
          data['back_color'],
          ParamType.String,
          false,
        ),
        bold: deserializeParam(
          data['bold'],
          ParamType.bool,
          false,
        ),
        italic: deserializeParam(
          data['italic'],
          ParamType.bool,
          false,
        ),
        underline: deserializeParam(
          data['underline'],
          ParamType.bool,
          false,
        ),
        strikeout: deserializeParam(
          data['strikeout'],
          ParamType.bool,
          false,
        ),
        alignment: deserializeParam(
          data['alignment'],
          ParamType.int,
          false,
        ),
        scaleX: deserializeParam(
          data['scaleX'],
          ParamType.double,
          false,
        ),
        scaleY: deserializeParam(
          data['scaleY'],
          ParamType.double,
          false,
        ),
        spacing: deserializeParam(
          data['spacing'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'StylesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StylesStruct &&
        name == other.name &&
        fontname == other.fontname &&
        fontsize == other.fontsize &&
        primaryColor == other.primaryColor &&
        outlineColor == other.outlineColor &&
        backColor == other.backColor &&
        bold == other.bold &&
        italic == other.italic &&
        underline == other.underline &&
        strikeout == other.strikeout &&
        alignment == other.alignment &&
        scaleX == other.scaleX &&
        scaleY == other.scaleY &&
        spacing == other.spacing;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        fontname,
        fontsize,
        primaryColor,
        outlineColor,
        backColor,
        bold,
        italic,
        underline,
        strikeout,
        alignment,
        scaleX,
        scaleY,
        spacing
      ]);
}

StylesStruct createStylesStruct({
  String? name,
  String? fontname,
  int? fontsize,
  String? primaryColor,
  String? outlineColor,
  String? backColor,
  bool? bold,
  bool? italic,
  bool? underline,
  bool? strikeout,
  int? alignment,
  double? scaleX,
  double? scaleY,
  double? spacing,
}) =>
    StylesStruct(
      name: name,
      fontname: fontname,
      fontsize: fontsize,
      primaryColor: primaryColor,
      outlineColor: outlineColor,
      backColor: backColor,
      bold: bold,
      italic: italic,
      underline: underline,
      strikeout: strikeout,
      alignment: alignment,
      scaleX: scaleX,
      scaleY: scaleY,
      spacing: spacing,
    );
