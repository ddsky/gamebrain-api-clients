//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchSuggestionResponseResultsInner {
  /// Returns a new [SearchSuggestionResponseResultsInner] instance.
  SearchSuggestionResponseResultsInner({
    this.id,
    this.year,
    this.name,
    this.genre,
    this.image,
    this.link,
    this.rating,
    this.adultOnly,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? year;

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
  String? genre;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchResponseResultsInnerRating? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? adultOnly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchSuggestionResponseResultsInner &&
    other.id == id &&
    other.year == year &&
    other.name == name &&
    other.genre == genre &&
    other.image == image &&
    other.link == link &&
    other.rating == rating &&
    other.adultOnly == adultOnly;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (year == null ? 0 : year!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (genre == null ? 0 : genre!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (adultOnly == null ? 0 : adultOnly!.hashCode);

  @override
  String toString() => 'SearchSuggestionResponseResultsInner[id=$id, year=$year, name=$name, genre=$genre, image=$image, link=$link, rating=$rating, adultOnly=$adultOnly]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.year != null) {
      json[r'year'] = this.year;
    } else {
      json[r'year'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.genre != null) {
      json[r'genre'] = this.genre;
    } else {
      json[r'genre'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.adultOnly != null) {
      json[r'adult_only'] = this.adultOnly;
    } else {
      json[r'adult_only'] = null;
    }
    return json;
  }

  /// Returns a new [SearchSuggestionResponseResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchSuggestionResponseResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchSuggestionResponseResultsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchSuggestionResponseResultsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchSuggestionResponseResultsInner(
        id: mapValueOfType<int>(json, r'id'),
        year: num.parse('${json[r'year']}'),
        name: mapValueOfType<String>(json, r'name'),
        genre: mapValueOfType<String>(json, r'genre'),
        image: mapValueOfType<String>(json, r'image'),
        link: mapValueOfType<String>(json, r'link'),
        rating: SearchResponseResultsInnerRating.fromJson(json[r'rating']),
        adultOnly: mapValueOfType<bool>(json, r'adult_only'),
      );
    }
    return null;
  }

  static List<SearchSuggestionResponseResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchSuggestionResponseResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchSuggestionResponseResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchSuggestionResponseResultsInner> mapFromJson(dynamic json) {
    final map = <String, SearchSuggestionResponseResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchSuggestionResponseResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchSuggestionResponseResultsInner-objects as value to a dart map
  static Map<String, List<SearchSuggestionResponseResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchSuggestionResponseResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchSuggestionResponseResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

