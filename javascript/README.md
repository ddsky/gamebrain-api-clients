# gamebrain-js

GamebrainJs - JavaScript client for gamebrain-js
GameBrain API
This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.1
- Package version: 1.0.1
- Generator version: 7.8.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.JavascriptClientCodegen

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/), please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install gamebrain-js --save
```

Finally, you need to build the module:

```shell
npm run build
```

##### Local development

To use the library locally without publishing to a remote npm registry, first install the dependencies by changing into the directory containing `package.json` (and this README). Let's call this `JAVASCRIPT_CLIENT_DIR`. Then run:

```shell
npm install
```

Next, [link](https://docs.npmjs.com/cli/link) it globally in npm with the following, also from `JAVASCRIPT_CLIENT_DIR`:

```shell
npm link
```

To use the link you just defined in your project, switch to the directory you want to use your gamebrain-js from, and run:

```shell
npm link /path/to/<JAVASCRIPT_CLIENT_DIR>
```

Finally, you need to build the module:

```shell
npm run build
```

#### git

If the library is hosted at a git repository, e.g.https://github.com/ddsky/gamebrain-clients/tree/master/javascript/
then install it via:

```shell
    npm install ddsky/gamebrain-clients/tree/master/javascript/ --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var GamebrainJs = require('gamebrain-js');

var defaultClient = GamebrainJs.ApiClient.instance;
// Configure API key authorization: apiKey
var apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = "YOUR API KEY"
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix['api-key'] = "Token"
// Configure API key authorization: headerApiKey
var headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = "YOUR API KEY"
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix['x-api-key'] = "Token"

var api = new GamebrainJs.DefaultApi()
var id = 56; // {Number} The unique identifier of the game.
var apiKey = "abc123"; // {String} Your API key for authentication.
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.detail(id, apiKey, callback);

```

## Documentation for API Endpoints

All URIs are relative to *https://api.gamebrain.co/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*GamebrainJs.DefaultApi* | [**detail**](docs/DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
*GamebrainJs.DefaultApi* | [**search**](docs/DefaultApi.md#search) | **GET** /games | Search Games
*GamebrainJs.DefaultApi* | [**similar**](docs/DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
*GamebrainJs.DefaultApi* | [**suggest**](docs/DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions


## Documentation for Models

 - [GamebrainJs.GameResponse](docs/GameResponse.md)
 - [GamebrainJs.GameResponseOffersInner](docs/GameResponseOffersInner.md)
 - [GamebrainJs.GameResponseOffersInnerPrice](docs/GameResponseOffersInnerPrice.md)
 - [GamebrainJs.GameResponseOfficialStoresInner](docs/GameResponseOfficialStoresInner.md)
 - [GamebrainJs.GameResponsePlatformsInner](docs/GameResponsePlatformsInner.md)
 - [GamebrainJs.GameResponsePlaytime](docs/GameResponsePlaytime.md)
 - [GamebrainJs.GameResponseRating](docs/GameResponseRating.md)
 - [GamebrainJs.SearchResponse](docs/SearchResponse.md)
 - [GamebrainJs.SearchResponseActiveFilterOptionsInner](docs/SearchResponseActiveFilterOptionsInner.md)
 - [GamebrainJs.SearchResponseActiveFilterOptionsInnerValuesInner](docs/SearchResponseActiveFilterOptionsInnerValuesInner.md)
 - [GamebrainJs.SearchResponseFilterOptionsInner](docs/SearchResponseFilterOptionsInner.md)
 - [GamebrainJs.SearchResponseFilterOptionsInnerValuesInner](docs/SearchResponseFilterOptionsInnerValuesInner.md)
 - [GamebrainJs.SearchResponseResultsInner](docs/SearchResponseResultsInner.md)
 - [GamebrainJs.SearchResponseResultsInnerRating](docs/SearchResponseResultsInnerRating.md)
 - [GamebrainJs.SearchResponseSorting](docs/SearchResponseSorting.md)
 - [GamebrainJs.SearchResponseSortingOptionsInner](docs/SearchResponseSortingOptionsInner.md)
 - [GamebrainJs.SearchSuggestionResponse](docs/SearchSuggestionResponse.md)
 - [GamebrainJs.SearchSuggestionResponseResultsInner](docs/SearchSuggestionResponseResultsInner.md)
 - [GamebrainJs.SimilarGamesResponse](docs/SimilarGamesResponse.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### apiKey


- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

### headerApiKey


- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

