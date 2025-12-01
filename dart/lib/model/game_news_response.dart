//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameNewsResponse {
  /// Returns a new [GameNewsResponse] instance.
  GameNewsResponse({
    this.news = const [],
  });

  List<GameNewsItem> news;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameNewsResponse &&
    _deepEquality.equals(other.news, news);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (news.hashCode);

  @override
  String toString() => 'GameNewsResponse[news=$news]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'news'] = this.news;
    return json;
  }

  /// Returns a new [GameNewsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameNewsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameNewsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameNewsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameNewsResponse(
        news: GameNewsItem.listFromJson(json[r'news']),
      );
    }
    return null;
  }

  static List<GameNewsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameNewsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameNewsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameNewsResponse> mapFromJson(dynamic json) {
    final map = <String, GameNewsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameNewsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameNewsResponse-objects as value to a dart map
  static Map<String, List<GameNewsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameNewsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameNewsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'news',
  };
}

