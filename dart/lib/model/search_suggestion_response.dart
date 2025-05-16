//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchSuggestionResponse {
  /// Returns a new [SearchSuggestionResponse] instance.
  SearchSuggestionResponse({
    this.results = const [],
  });

  List<SearchSuggestionResponseResultsInner> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchSuggestionResponse &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (results.hashCode);

  @override
  String toString() => 'SearchSuggestionResponse[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [SearchSuggestionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchSuggestionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchSuggestionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchSuggestionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchSuggestionResponse(
        results: SearchSuggestionResponseResultsInner.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<SearchSuggestionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchSuggestionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchSuggestionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchSuggestionResponse> mapFromJson(dynamic json) {
    final map = <String, SearchSuggestionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchSuggestionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchSuggestionResponse-objects as value to a dart map
  static Map<String, List<SearchSuggestionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchSuggestionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchSuggestionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

