//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchResponse {
  /// Returns a new [SearchResponse] instance.
  SearchResponse({
    this.sorting,
    this.activeFilterOptions = const [],
    this.query,
    this.totalResults,
    this.limit,
    this.offset,
    this.results = const [],
    this.filterOptions = const [],
    this.sortingOptions = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchResponseSorting? sorting;

  List<SearchResponseActiveFilterOptionsInner> activeFilterOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalResults;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  List<SearchResponseResultsInner> results;

  List<SearchResponseFilterOptionsInner> filterOptions;

  List<SearchResponseSortingOptionsInner> sortingOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResponse &&
    other.sorting == sorting &&
    _deepEquality.equals(other.activeFilterOptions, activeFilterOptions) &&
    other.query == query &&
    other.totalResults == totalResults &&
    other.limit == limit &&
    other.offset == offset &&
    _deepEquality.equals(other.results, results) &&
    _deepEquality.equals(other.filterOptions, filterOptions) &&
    _deepEquality.equals(other.sortingOptions, sortingOptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sorting == null ? 0 : sorting!.hashCode) +
    (activeFilterOptions.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (totalResults == null ? 0 : totalResults!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (results.hashCode) +
    (filterOptions.hashCode) +
    (sortingOptions.hashCode);

  @override
  String toString() => 'SearchResponse[sorting=$sorting, activeFilterOptions=$activeFilterOptions, query=$query, totalResults=$totalResults, limit=$limit, offset=$offset, results=$results, filterOptions=$filterOptions, sortingOptions=$sortingOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
      json[r'active_filter_options'] = this.activeFilterOptions;
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.totalResults != null) {
      json[r'total_results'] = this.totalResults;
    } else {
      json[r'total_results'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
      json[r'results'] = this.results;
      json[r'filter_options'] = this.filterOptions;
      json[r'sorting_options'] = this.sortingOptions;
    return json;
  }

  /// Returns a new [SearchResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResponse(
        sorting: SearchResponseSorting.fromJson(json[r'sorting']),
        activeFilterOptions: SearchResponseActiveFilterOptionsInner.listFromJson(json[r'active_filter_options']),
        query: mapValueOfType<String>(json, r'query'),
        totalResults: mapValueOfType<int>(json, r'total_results'),
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        results: SearchResponseResultsInner.listFromJson(json[r'results']),
        filterOptions: SearchResponseFilterOptionsInner.listFromJson(json[r'filter_options']),
        sortingOptions: SearchResponseSortingOptionsInner.listFromJson(json[r'sorting_options']),
      );
    }
    return null;
  }

  static List<SearchResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResponse> mapFromJson(dynamic json) {
    final map = <String, SearchResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResponse-objects as value to a dart map
  static Map<String, List<SearchResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

