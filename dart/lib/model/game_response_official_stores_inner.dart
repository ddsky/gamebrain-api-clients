//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameResponseOfficialStoresInner {
  /// Returns a new [GameResponseOfficialStoresInner] instance.
  GameResponseOfficialStoresInner({
    this.source_,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameResponseOfficialStoresInner &&
    other.source_ == source_ &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (source_ == null ? 0 : source_!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'GameResponseOfficialStoresInner[source_=$source_, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [GameResponseOfficialStoresInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameResponseOfficialStoresInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameResponseOfficialStoresInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameResponseOfficialStoresInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameResponseOfficialStoresInner(
        source_: mapValueOfType<String>(json, r'source'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<GameResponseOfficialStoresInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameResponseOfficialStoresInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameResponseOfficialStoresInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameResponseOfficialStoresInner> mapFromJson(dynamic json) {
    final map = <String, GameResponseOfficialStoresInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameResponseOfficialStoresInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameResponseOfficialStoresInner-objects as value to a dart map
  static Map<String, List<GameResponseOfficialStoresInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameResponseOfficialStoresInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameResponseOfficialStoresInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

