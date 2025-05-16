//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameResponseRating {
  /// Returns a new [GameResponseRating] instance.
  GameResponseRating({
    this.mean,
    this.count,
    this.meanPlayers,
    this.countPlayers,
    this.meanCritics,
    this.countCritics,
  });

  double? mean;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  double? meanPlayers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countPlayers;

  double? meanCritics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countCritics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameResponseRating &&
    other.mean == mean &&
    other.count == count &&
    other.meanPlayers == meanPlayers &&
    other.countPlayers == countPlayers &&
    other.meanCritics == meanCritics &&
    other.countCritics == countCritics;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mean == null ? 0 : mean!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (meanPlayers == null ? 0 : meanPlayers!.hashCode) +
    (countPlayers == null ? 0 : countPlayers!.hashCode) +
    (meanCritics == null ? 0 : meanCritics!.hashCode) +
    (countCritics == null ? 0 : countCritics!.hashCode);

  @override
  String toString() => 'GameResponseRating[mean=$mean, count=$count, meanPlayers=$meanPlayers, countPlayers=$countPlayers, meanCritics=$meanCritics, countCritics=$countCritics]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mean != null) {
      json[r'mean'] = this.mean;
    } else {
      json[r'mean'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.meanPlayers != null) {
      json[r'mean_players'] = this.meanPlayers;
    } else {
      json[r'mean_players'] = null;
    }
    if (this.countPlayers != null) {
      json[r'count_players'] = this.countPlayers;
    } else {
      json[r'count_players'] = null;
    }
    if (this.meanCritics != null) {
      json[r'mean_critics'] = this.meanCritics;
    } else {
      json[r'mean_critics'] = null;
    }
    if (this.countCritics != null) {
      json[r'count_critics'] = this.countCritics;
    } else {
      json[r'count_critics'] = null;
    }
    return json;
  }

  /// Returns a new [GameResponseRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameResponseRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameResponseRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameResponseRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameResponseRating(
        mean: mapValueOfType<double>(json, r'mean'),
        count: mapValueOfType<int>(json, r'count'),
        meanPlayers: mapValueOfType<double>(json, r'mean_players'),
        countPlayers: mapValueOfType<int>(json, r'count_players'),
        meanCritics: mapValueOfType<double>(json, r'mean_critics'),
        countCritics: mapValueOfType<int>(json, r'count_critics'),
      );
    }
    return null;
  }

  static List<GameResponseRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameResponseRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameResponseRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameResponseRating> mapFromJson(dynamic json) {
    final map = <String, GameResponseRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameResponseRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameResponseRating-objects as value to a dart map
  static Map<String, List<GameResponseRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameResponseRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameResponseRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

