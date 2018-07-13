// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map json) {
  return $checkedNew('Config', json, () {
    $checkKeys(json, requiredKeys: const ['builders']);
    var val = new Config(
        builders: $checkedConvert(
            json,
            'builders',
            (v) => (v as Map)?.map((k, e) => new MapEntry(k as String,
                e == null ? null : new Builder.fromJson(e as Map)))));
    return val;
  });
}

Map<String, dynamic> _$ConfigToJson(Config instance) =>
    <String, dynamic>{'builders': instance.builders};

Builder _$BuilderFromJson(Map json) {
  return $checkedNew('Builder', json, () {
    $checkKeys(json, allowedKeys: const [
      'target',
      'import',
      'is_optional',
      'configLocation',
      'auto_apply',
      'build_to',
      'defaultEnumTest',
      'builder_factories',
      'applies_builders',
      'required_inputs',
      'build_extensions'
    ], disallowNullValues: const [
      'configLocation',
      'auto_apply'
    ]);
    var val = new Builder(
        import: $checkedConvert(json, 'import', (v) => v as String),
        target: $checkedConvert(json, 'target', (v) => v as String),
        isOptional: $checkedConvert(json, 'is_optional', (v) => v as bool),
        autoApply: $checkedConvert(json, 'auto_apply',
            (v) => _$enumDecodeNullable(_$AutoApplyEnumMap, v)),
        buildTo: $checkedConvert(
            json, 'build_to', (v) => _$enumDecodeNullable(_$BuildToEnumMap, v)),
        defaultEnumTest: $checkedConvert(json, 'defaultEnumTest',
            (v) => _$enumDecodeNullable(_$AutoApplyEnumMap, v)),
        builderFactories: $checkedConvert(json, 'builder_factories',
            (v) => (v as List).map((e) => e as String).toList()),
        appliesBuilders: $checkedConvert(json, 'applies_builders',
            (v) => (v as List)?.map((e) => e as String)?.toList()),
        requiredInputs: $checkedConvert(json, 'required_inputs',
            (v) => (v as List)?.map((e) => e as String)?.toList()),
        buildExtentions: $checkedConvert(
            json,
            'build_extensions',
            (v) => (v as Map)?.map((k, e) => new MapEntry(
                k as String, (e as List)?.map((e) => e as String)?.toList()))),
        configLocation: $checkedConvert(json, 'configLocation',
            (v) => v == null ? null : Uri.parse(v as String)));
    return val;
  }, fieldKeyMap: const {
    'isOptional': 'is_optional',
    'autoApply': 'auto_apply',
    'buildTo': 'build_to',
    'builderFactories': 'builder_factories',
    'appliesBuilders': 'applies_builders',
    'requiredInputs': 'required_inputs',
    'buildExtentions': 'build_extensions'
  });
}

Map<String, dynamic> _$BuilderToJson(Builder instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('target', instance.target);
  writeNotNull('import', instance.import);
  writeNotNull('is_optional', instance.isOptional);
  writeNotNull('configLocation', instance.configLocation?.toString());
  writeNotNull('auto_apply', _$AutoApplyEnumMap[instance.autoApply]);
  writeNotNull('build_to', _$BuildToEnumMap[instance.buildTo]);
  writeNotNull('defaultEnumTest', _$AutoApplyEnumMap[instance.defaultEnumTest]);
  val['builder_factories'] = instance.builderFactories;
  writeNotNull('applies_builders', instance.appliesBuilders);
  writeNotNull('required_inputs', instance.requiredInputs);
  writeNotNull('build_extensions', instance.buildExtentions);
  return val;
}

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw new ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw new ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$AutoApplyEnumMap = const <AutoApply, dynamic>{
  AutoApply.none: 'none',
  AutoApply.dependents: 'dependents',
  AutoApply.allPackages: 'all_packages',
  AutoApply.rootPackage: 'root_package'
};

const _$BuildToEnumMap = const <BuildTo, dynamic>{
  BuildTo.cache: 'cache',
  BuildTo.source: 'source'
};
