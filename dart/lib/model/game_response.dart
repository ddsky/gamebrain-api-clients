//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameResponse {
  /// Returns a new [GameResponse] instance.
  GameResponse({
    this.id,
    this.name,
    this.image,
    this.gameplay,
    this.link,
    this.xUrl,
    this.rating,
    this.description,
    this.shortDescription,
    this.releaseDate,
    this.developer,
    this.playtime,
    this.platforms = const [],
    this.tags = const [],
    this.genres = const [],
    this.genre,
    this.themes = const [],
    this.adultOnly,
    this.playModes = const [],
    this.screenshots = const [],
    this.videos = const [],
    this.offers = const [],
    this.officialStores = const [],
    this.microTrailer,
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
  String? name;

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
  String? gameplay;

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
  String? xUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GameResponseRating? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? releaseDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? developer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GameResponsePlaytime? playtime;

  List<GameResponsePlatformsInner> platforms;

  List<String> tags;

  List<GameResponsePlatformsInner> genres;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? genre;

  List<GameResponsePlatformsInner> themes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? adultOnly;

  List<GameResponsePlatformsInner> playModes;

  List<String> screenshots;

  List<String> videos;

  List<GameResponseOffersInner> offers;

  List<GameResponseOfficialStoresInner> officialStores;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? microTrailer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameResponse &&
    other.id == id &&
    other.name == name &&
    other.image == image &&
    other.gameplay == gameplay &&
    other.link == link &&
    other.xUrl == xUrl &&
    other.rating == rating &&
    other.description == description &&
    other.shortDescription == shortDescription &&
    other.releaseDate == releaseDate &&
    other.developer == developer &&
    other.playtime == playtime &&
    _deepEquality.equals(other.platforms, platforms) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.genres, genres) &&
    other.genre == genre &&
    _deepEquality.equals(other.themes, themes) &&
    other.adultOnly == adultOnly &&
    _deepEquality.equals(other.playModes, playModes) &&
    _deepEquality.equals(other.screenshots, screenshots) &&
    _deepEquality.equals(other.videos, videos) &&
    _deepEquality.equals(other.offers, offers) &&
    _deepEquality.equals(other.officialStores, officialStores) &&
    other.microTrailer == microTrailer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (gameplay == null ? 0 : gameplay!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (xUrl == null ? 0 : xUrl!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (shortDescription == null ? 0 : shortDescription!.hashCode) +
    (releaseDate == null ? 0 : releaseDate!.hashCode) +
    (developer == null ? 0 : developer!.hashCode) +
    (playtime == null ? 0 : playtime!.hashCode) +
    (platforms.hashCode) +
    (tags.hashCode) +
    (genres.hashCode) +
    (genre == null ? 0 : genre!.hashCode) +
    (themes.hashCode) +
    (adultOnly == null ? 0 : adultOnly!.hashCode) +
    (playModes.hashCode) +
    (screenshots.hashCode) +
    (videos.hashCode) +
    (offers.hashCode) +
    (officialStores.hashCode) +
    (microTrailer == null ? 0 : microTrailer!.hashCode);

  @override
  String toString() => 'GameResponse[id=$id, name=$name, image=$image, gameplay=$gameplay, link=$link, xUrl=$xUrl, rating=$rating, description=$description, shortDescription=$shortDescription, releaseDate=$releaseDate, developer=$developer, playtime=$playtime, platforms=$platforms, tags=$tags, genres=$genres, genre=$genre, themes=$themes, adultOnly=$adultOnly, playModes=$playModes, screenshots=$screenshots, videos=$videos, offers=$offers, officialStores=$officialStores, microTrailer=$microTrailer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.gameplay != null) {
      json[r'gameplay'] = this.gameplay;
    } else {
      json[r'gameplay'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.xUrl != null) {
      json[r'x_url'] = this.xUrl;
    } else {
      json[r'x_url'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.shortDescription != null) {
      json[r'short_description'] = this.shortDescription;
    } else {
      json[r'short_description'] = null;
    }
    if (this.releaseDate != null) {
      json[r'release_date'] = _dateFormatter.format(this.releaseDate!.toUtc());
    } else {
      json[r'release_date'] = null;
    }
    if (this.developer != null) {
      json[r'developer'] = this.developer;
    } else {
      json[r'developer'] = null;
    }
    if (this.playtime != null) {
      json[r'playtime'] = this.playtime;
    } else {
      json[r'playtime'] = null;
    }
      json[r'platforms'] = this.platforms;
      json[r'tags'] = this.tags;
      json[r'genres'] = this.genres;
    if (this.genre != null) {
      json[r'genre'] = this.genre;
    } else {
      json[r'genre'] = null;
    }
      json[r'themes'] = this.themes;
    if (this.adultOnly != null) {
      json[r'adult_only'] = this.adultOnly;
    } else {
      json[r'adult_only'] = null;
    }
      json[r'play_modes'] = this.playModes;
      json[r'screenshots'] = this.screenshots;
      json[r'videos'] = this.videos;
      json[r'offers'] = this.offers;
      json[r'official_stores'] = this.officialStores;
    if (this.microTrailer != null) {
      json[r'micro_trailer'] = this.microTrailer;
    } else {
      json[r'micro_trailer'] = null;
    }
    return json;
  }

  /// Returns a new [GameResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameResponse(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        image: mapValueOfType<String>(json, r'image'),
        gameplay: mapValueOfType<String>(json, r'gameplay'),
        link: mapValueOfType<String>(json, r'link'),
        xUrl: mapValueOfType<String>(json, r'x_url'),
        rating: GameResponseRating.fromJson(json[r'rating']),
        description: mapValueOfType<String>(json, r'description'),
        shortDescription: mapValueOfType<String>(json, r'short_description'),
        releaseDate: mapDateTime(json, r'release_date', r''),
        developer: mapValueOfType<String>(json, r'developer'),
        playtime: GameResponsePlaytime.fromJson(json[r'playtime']),
        platforms: GameResponsePlatformsInner.listFromJson(json[r'platforms']),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        genres: GameResponsePlatformsInner.listFromJson(json[r'genres']),
        genre: mapValueOfType<String>(json, r'genre'),
        themes: GameResponsePlatformsInner.listFromJson(json[r'themes']),
        adultOnly: mapValueOfType<bool>(json, r'adult_only'),
        playModes: GameResponsePlatformsInner.listFromJson(json[r'play_modes']),
        screenshots: json[r'screenshots'] is Iterable
            ? (json[r'screenshots'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        videos: json[r'videos'] is Iterable
            ? (json[r'videos'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        offers: GameResponseOffersInner.listFromJson(json[r'offers']),
        officialStores: GameResponseOfficialStoresInner.listFromJson(json[r'official_stores']),
        microTrailer: mapValueOfType<String>(json, r'micro_trailer'),
      );
    }
    return null;
  }

  static List<GameResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameResponse> mapFromJson(dynamic json) {
    final map = <String, GameResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameResponse-objects as value to a dart map
  static Map<String, List<GameResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

