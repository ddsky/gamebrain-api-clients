# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>co.gamebrain</groupId>
    <artifactId>android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "co.gamebrain:android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import co.gamebrain.DefaultApi;

public class DefaultApiExample {

    public static void main(String[] args) {
        DefaultApi apiInstance = new DefaultApi();
        Integer id = null; // Integer | 
        String apiKey = null; // String | 
        try {
            GameResponse result = apiInstance.detail(id, apiKey);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#detail");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.gamebrain.co/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**detail**](docs/DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id}
*DefaultApi* | [**search**](docs/DefaultApi.md#search) | **GET** /games | GET v1/games
*DefaultApi* | [**similar**](docs/DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar
*DefaultApi* | [**suggest**](docs/DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions


## Documentation for Models

 - [GameResponse](docs/GameResponse.md)
 - [GameResponseOffersInner](docs/GameResponseOffersInner.md)
 - [GameResponseOffersInnerPrice](docs/GameResponseOffersInnerPrice.md)
 - [GameResponseOfficialStoresInner](docs/GameResponseOfficialStoresInner.md)
 - [GameResponsePlatformsInner](docs/GameResponsePlatformsInner.md)
 - [GameResponsePlaytime](docs/GameResponsePlaytime.md)
 - [GameResponseRating](docs/GameResponseRating.md)
 - [SearchResponse](docs/SearchResponse.md)
 - [SearchResponseActiveFilterOptionsInner](docs/SearchResponseActiveFilterOptionsInner.md)
 - [SearchResponseActiveFilterOptionsInnerValuesInner](docs/SearchResponseActiveFilterOptionsInnerValuesInner.md)
 - [SearchResponseFilterOptionsInner](docs/SearchResponseFilterOptionsInner.md)
 - [SearchResponseFilterOptionsInnerValuesInner](docs/SearchResponseFilterOptionsInnerValuesInner.md)
 - [SearchResponseResultsInner](docs/SearchResponseResultsInner.md)
 - [SearchResponseResultsInnerRating](docs/SearchResponseResultsInnerRating.md)
 - [SearchResponseSorting](docs/SearchResponseSorting.md)
 - [SearchResponseSortingOptionsInner](docs/SearchResponseSortingOptionsInner.md)
 - [SearchSuggestionResponse](docs/SearchSuggestionResponse.md)
 - [SearchSuggestionResponseResultsInner](docs/SearchSuggestionResponseResultsInner.md)
 - [SimilarGamesResponse](docs/SimilarGamesResponse.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author



