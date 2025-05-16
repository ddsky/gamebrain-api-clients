//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResponseSortingOptionsInner {
  /// Returns a new [SearchResponseSortingOptionsInner] instance.
  SearchResponseSortingOptionsInner({
    this.name,
    this.sort,
    this.key,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResponseSortingOptionsInner &&
    other.name == name &&
    other.sort == sort &&
    other.key == key;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (sort == null ? 0 : sort!.hashCode) +
    (key == null ? 0 : key!.hashCode);

  @override
  String toString() => 'SearchResponseSortingOptionsInner[name=$name, sort=$sort, key=$key]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.sort != null) {
      json[r'sort'] = this.sort;
    } else {
      json[r'sort'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    return json;
  }

  /// Returns a new [SearchResponseSortingOptionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResponseSortingOptionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResponseSortingOptionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResponseSortingOptionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResponseSortingOptionsInner(
        name: mapValueOfType<String>(json, r'name'),
        sort: mapValueOfType<String>(json, r'sort'),
        key: mapValueOfType<String>(json, r'key'),
      );
    }
    return null;
  }

  static List<SearchResponseSortingOptionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResponseSortingOptionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResponseSortingOptionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResponseSortingOptionsInner> mapFromJson(dynamic json) {
    final map = <String, SearchResponseSortingOptionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResponseSortingOptionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResponseSortingOptionsInner-objects as value to a dart map
  static Map<String, List<SearchResponseSortingOptionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResponseSortingOptionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResponseSortingOptionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

