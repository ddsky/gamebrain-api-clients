//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Game Details
  ///
  /// Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The unique identifier of the game.
  ///
  /// * [String] apiKey (required):
  ///   Your API key for authentication.
  Future<Response> detailWithHttpInfo(int id, String apiKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/games/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'api-key', apiKey));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Game Details
  ///
  /// Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The unique identifier of the game.
  ///
  /// * [String] apiKey (required):
  ///   Your API key for authentication.
  Future<GameResponse?> detail(int id, String apiKey,) async {
    final response = await detailWithHttpInfo(id, apiKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GameResponse',) as GameResponse;
    
    }
    return null;
  }

  /// Search Games
  ///
  /// Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query, e.g., game name, platform, genre, or any combination.
  ///
  /// * [int] offset (required):
  ///   The number of results to skip before starting to collect the result set.
  ///
  /// * [int] limit (required):
  ///   The maximum number of results to return.
  ///
  /// * [String] filters (required):
  ///   JSON array of filter objects to apply to the search.
  ///
  /// * [String] sort (required):
  ///   The field by which to sort the results.
  ///
  /// * [String] sortOrder (required):
  ///   The sort order: 'asc' for ascending or 'desc' for descending.
  ///
  /// * [bool] generateFilterOptions (required):
  ///   Whether to generate filter options in the response.
  ///
  /// * [String] apiKey (required):
  ///   Your API key for authentication.
  Future<Response> searchWithHttpInfo(String query, int offset, int limit, String filters, String sort, String sortOrder, bool generateFilterOptions, String apiKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/games';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
      queryParams.addAll(_queryParams('', 'offset', offset));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'filters', filters));
      queryParams.addAll(_queryParams('', 'sort', sort));
      queryParams.addAll(_queryParams('', 'sort-order', sortOrder));
      queryParams.addAll(_queryParams('', 'generate-filter-options', generateFilterOptions));
      queryParams.addAll(_queryParams('', 'api-key', apiKey));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Games
  ///
  /// Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The search query, e.g., game name, platform, genre, or any combination.
  ///
  /// * [int] offset (required):
  ///   The number of results to skip before starting to collect the result set.
  ///
  /// * [int] limit (required):
  ///   The maximum number of results to return.
  ///
  /// * [String] filters (required):
  ///   JSON array of filter objects to apply to the search.
  ///
  /// * [String] sort (required):
  ///   The field by which to sort the results.
  ///
  /// * [String] sortOrder (required):
  ///   The sort order: 'asc' for ascending or 'desc' for descending.
  ///
  /// * [bool] generateFilterOptions (required):
  ///   Whether to generate filter options in the response.
  ///
  /// * [String] apiKey (required):
  ///   Your API key for authentication.
  Future<SearchResponse?> search(String query, int offset, int limit, String filters, String sort, String sortOrder, bool generateFilterOptions, String apiKey,) async {
    final response = await searchWithHttpInfo(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchResponse',) as SearchResponse;
    
    }
    return null;
  }

  /// Get Similar Games
  ///
  /// Get games that are similar to the given one.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [int] limit (required):
  ///
  /// * [String] apiKey (required):
  Future<Response> similarWithHttpInfo(int id, int limit, String apiKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/games/{id}/similar'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'api-key', apiKey));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Similar Games
  ///
  /// Get games that are similar to the given one.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [int] limit (required):
  ///
  /// * [String] apiKey (required):
  Future<SimilarGamesResponse?> similar(int id, int limit, String apiKey,) async {
    final response = await similarWithHttpInfo(id, limit, apiKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SimilarGamesResponse',) as SimilarGamesResponse;
    
    }
    return null;
  }

  /// Get Game Suggestions
  ///
  /// Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The partial search query to get suggestions for.
  ///
  /// * [int] limit (required):
  ///   The maximum number of suggestions to return.
  ///
  /// * [String] apiKey (required):
  ///   Your API key for authentication.
  Future<Response> suggestWithHttpInfo(String query, int limit, String apiKey,) async {
    // ignore: prefer_const_declarations
    final path = r'/games/suggestions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'api-key', apiKey));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Game Suggestions
  ///
  /// Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   The partial search query to get suggestions for.
  ///
  /// * [int] limit (required):
  ///   The maximum number of suggestions to return.
  ///
  /// * [String] apiKey (required):
  ///   Your API key for authentication.
  Future<SearchSuggestionResponse?> suggest(String query, int limit, String apiKey,) async {
    final response = await suggestWithHttpInfo(query, limit, apiKey,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchSuggestionResponse',) as SearchSuggestionResponse;
    
    }
    return null;
  }
}
