//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameResponsePlaytime {
  /// Returns a new [GameResponsePlaytime] instance.
  GameResponsePlaytime({
    this.percentiles = const [],
    this.min,
    this.median,
    this.max,
    this.mean,
    this.mentions,
  });

  List<int> percentiles;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? min;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? median;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? max;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? mean;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mentions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameResponsePlaytime &&
    _deepEquality.equals(other.percentiles, percentiles) &&
    other.min == min &&
    other.median == median &&
    other.max == max &&
    other.mean == mean &&
    other.mentions == mentions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (percentiles.hashCode) +
    (min == null ? 0 : min!.hashCode) +
    (median == null ? 0 : median!.hashCode) +
    (max == null ? 0 : max!.hashCode) +
    (mean == null ? 0 : mean!.hashCode) +
    (mentions == null ? 0 : mentions!.hashCode);

  @override
  String toString() => 'GameResponsePlaytime[percentiles=$percentiles, min=$min, median=$median, max=$max, mean=$mean, mentions=$mentions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'percentiles'] = this.percentiles;
    if (this.min != null) {
      json[r'min'] = this.min;
    } else {
      json[r'min'] = null;
    }
    if (this.median != null) {
      json[r'median'] = this.median;
    } else {
      json[r'median'] = null;
    }
    if (this.max != null) {
      json[r'max'] = this.max;
    } else {
      json[r'max'] = null;
    }
    if (this.mean != null) {
      json[r'mean'] = this.mean;
    } else {
      json[r'mean'] = null;
    }
    if (this.mentions != null) {
      json[r'mentions'] = this.mentions;
    } else {
      json[r'mentions'] = null;
    }
    return json;
  }

  /// Returns a new [GameResponsePlaytime] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameResponsePlaytime? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameResponsePlaytime[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameResponsePlaytime[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameResponsePlaytime(
        percentiles: json[r'percentiles'] is Iterable
            ? (json[r'percentiles'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        min: mapValueOfType<int>(json, r'min'),
        median: mapValueOfType<int>(json, r'median'),
        max: mapValueOfType<int>(json, r'max'),
        mean: mapValueOfType<double>(json, r'mean'),
        mentions: mapValueOfType<int>(json, r'mentions'),
      );
    }
    return null;
  }

  static List<GameResponsePlaytime> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameResponsePlaytime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameResponsePlaytime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameResponsePlaytime> mapFromJson(dynamic json) {
    final map = <String, GameResponsePlaytime>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameResponsePlaytime.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameResponsePlaytime-objects as value to a dart map
  static Map<String, List<GameResponsePlaytime>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameResponsePlaytime>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameResponsePlaytime.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

