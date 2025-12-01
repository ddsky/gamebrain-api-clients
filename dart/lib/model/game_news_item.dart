//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameNewsItem {
  /// Returns a new [GameNewsItem] instance.
  GameNewsItem({
    required this.title,
    required this.url,
    required this.source_,
    this.image,
    required this.published,
  });

  String title;

  String url;

  String source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  DateTime published;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameNewsItem &&
    other.title == title &&
    other.url == url &&
    other.source_ == source_ &&
    other.image == image &&
    other.published == published;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (url.hashCode) +
    (source_.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (published.hashCode);

  @override
  String toString() => 'GameNewsItem[title=$title, url=$url, source_=$source_, image=$image, published=$published]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = this.title;
      json[r'url'] = this.url;
      json[r'source'] = this.source_;
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
      json[r'published'] = _dateFormatter.format(this.published.toUtc());
    return json;
  }

  /// Returns a new [GameNewsItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameNewsItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameNewsItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameNewsItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameNewsItem(
        title: mapValueOfType<String>(json, r'title')!,
        url: mapValueOfType<String>(json, r'url')!,
        source_: mapValueOfType<String>(json, r'source')!,
        image: mapValueOfType<String>(json, r'image'),
        published: mapDateTime(json, r'published', r'')!,
      );
    }
    return null;
  }

  static List<GameNewsItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameNewsItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameNewsItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameNewsItem> mapFromJson(dynamic json) {
    final map = <String, GameNewsItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameNewsItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameNewsItem-objects as value to a dart map
  static Map<String, List<GameNewsItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameNewsItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameNewsItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'url',
    'source',
    'published',
  };
}

