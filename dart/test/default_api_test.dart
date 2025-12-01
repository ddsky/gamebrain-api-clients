//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DefaultApi
void main() {
  // final instance = DefaultApi();

  group('tests for DefaultApi', () {
    // Get Game Details
    //
    // Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
    //
    //Future<GameResponse> detail(int id, String apiKey) async
    test('test detail', () async {
      // TODO
    });

    // Get Game News
    //
    // Get news related to the given game.
    //
    //Future<GameNewsResponse> news(int id, int offset, int limit, String apiKey) async
    test('test news', () async {
      // TODO
    });

    // Search Games
    //
    // Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
    //
    //Future<SearchResponse> search(String query, int offset, int limit, String filters, String sort, String sortOrder, bool generateFilterOptions, String apiKey) async
    test('test search', () async {
      // TODO
    });

    // Get Similar Games
    //
    // Get games that are similar to the given one.
    //
    //Future<SimilarGamesResponse> similar(int id, int limit, String apiKey) async
    test('test similar', () async {
      // TODO
    });

    // Get Game Suggestions
    //
    // Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.
    //
    //Future<SearchSuggestionResponse> suggest(String query, int limit, String apiKey) async
    test('test suggest', () async {
      // TODO
    });

  });
}
