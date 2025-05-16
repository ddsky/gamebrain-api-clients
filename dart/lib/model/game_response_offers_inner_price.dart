//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameResponseOffersInnerPrice {
  /// Returns a new [GameResponseOffersInnerPrice] instance.
  GameResponseOffersInnerPrice({
    this.currency,
    this.discountPercent,
    this.value,
    this.initial,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? discountPercent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? initial;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameResponseOffersInnerPrice &&
    other.currency == currency &&
    other.discountPercent == discountPercent &&
    other.value == value &&
    other.initial == initial;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (discountPercent == null ? 0 : discountPercent!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (initial == null ? 0 : initial!.hashCode);

  @override
  String toString() => 'GameResponseOffersInnerPrice[currency=$currency, discountPercent=$discountPercent, value=$value, initial=$initial]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.discountPercent != null) {
      json[r'discount_percent'] = this.discountPercent;
    } else {
      json[r'discount_percent'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.initial != null) {
      json[r'initial'] = this.initial;
    } else {
      json[r'initial'] = null;
    }
    return json;
  }

  /// Returns a new [GameResponseOffersInnerPrice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameResponseOffersInnerPrice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameResponseOffersInnerPrice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameResponseOffersInnerPrice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameResponseOffersInnerPrice(
        currency: mapValueOfType<String>(json, r'currency'),
        discountPercent: mapValueOfType<double>(json, r'discount_percent'),
        value: mapValueOfType<double>(json, r'value'),
        initial: mapValueOfType<double>(json, r'initial'),
      );
    }
    return null;
  }

  static List<GameResponseOffersInnerPrice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameResponseOffersInnerPrice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameResponseOffersInnerPrice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameResponseOffersInnerPrice> mapFromJson(dynamic json) {
    final map = <String, GameResponseOffersInnerPrice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameResponseOffersInnerPrice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameResponseOffersInnerPrice-objects as value to a dart map
  static Map<String, List<GameResponseOffersInnerPrice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameResponseOffersInnerPrice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameResponseOffersInnerPrice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

