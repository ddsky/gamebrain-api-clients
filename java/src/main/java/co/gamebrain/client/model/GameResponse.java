/*
 * GameBrain API
 * GameBrain API
 *
 * The version of the OpenAPI document: 1.0.1
 * Contact: mail@gamebrain.co
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package co.gamebrain.client.model;

import java.util.Objects;
import co.gamebrain.client.model.GameResponseOffersInner;
import co.gamebrain.client.model.GameResponseOfficialStoresInner;
import co.gamebrain.client.model.GameResponsePlatformsInner;
import co.gamebrain.client.model.GameResponsePlaytime;
import co.gamebrain.client.model.GameResponseRating;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import co.gamebrain.client.JSON;

/**
 * GameResponse
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class GameResponse {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private URI image;

  public static final String SERIALIZED_NAME_GAMEPLAY = "gameplay";
  @SerializedName(SERIALIZED_NAME_GAMEPLAY)
  private URI gameplay;

  public static final String SERIALIZED_NAME_LINK = "link";
  @SerializedName(SERIALIZED_NAME_LINK)
  private URI link;

  public static final String SERIALIZED_NAME_X_URL = "x_url";
  @SerializedName(SERIALIZED_NAME_X_URL)
  private URI xUrl;

  public static final String SERIALIZED_NAME_RATING = "rating";
  @SerializedName(SERIALIZED_NAME_RATING)
  private GameResponseRating rating;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_SHORT_DESCRIPTION = "short_description";
  @SerializedName(SERIALIZED_NAME_SHORT_DESCRIPTION)
  private String shortDescription;

  public static final String SERIALIZED_NAME_RELEASE_DATE = "release_date";
  @SerializedName(SERIALIZED_NAME_RELEASE_DATE)
  private LocalDate releaseDate;

  public static final String SERIALIZED_NAME_DEVELOPER = "developer";
  @SerializedName(SERIALIZED_NAME_DEVELOPER)
  private String developer;

  public static final String SERIALIZED_NAME_PLAYTIME = "playtime";
  @SerializedName(SERIALIZED_NAME_PLAYTIME)
  private GameResponsePlaytime playtime;

  public static final String SERIALIZED_NAME_PLATFORMS = "platforms";
  @SerializedName(SERIALIZED_NAME_PLATFORMS)
  private List<GameResponsePlatformsInner> platforms = new ArrayList<>();

  public static final String SERIALIZED_NAME_TAGS = "tags";
  @SerializedName(SERIALIZED_NAME_TAGS)
  private List<String> tags = new ArrayList<>();

  public static final String SERIALIZED_NAME_GENRES = "genres";
  @SerializedName(SERIALIZED_NAME_GENRES)
  private List<GameResponsePlatformsInner> genres = new ArrayList<>();

  public static final String SERIALIZED_NAME_GENRE = "genre";
  @SerializedName(SERIALIZED_NAME_GENRE)
  private String genre;

  public static final String SERIALIZED_NAME_THEMES = "themes";
  @SerializedName(SERIALIZED_NAME_THEMES)
  private List<GameResponsePlatformsInner> themes = new ArrayList<>();

  public static final String SERIALIZED_NAME_ADULT_ONLY = "adult_only";
  @SerializedName(SERIALIZED_NAME_ADULT_ONLY)
  private Boolean adultOnly;

  public static final String SERIALIZED_NAME_PLAY_MODES = "play_modes";
  @SerializedName(SERIALIZED_NAME_PLAY_MODES)
  private List<GameResponsePlatformsInner> playModes = new ArrayList<>();

  public static final String SERIALIZED_NAME_SCREENSHOTS = "screenshots";
  @SerializedName(SERIALIZED_NAME_SCREENSHOTS)
  private List<URI> screenshots = new ArrayList<>();

  public static final String SERIALIZED_NAME_VIDEOS = "videos";
  @SerializedName(SERIALIZED_NAME_VIDEOS)
  private List<URI> videos = new ArrayList<>();

  public static final String SERIALIZED_NAME_OFFERS = "offers";
  @SerializedName(SERIALIZED_NAME_OFFERS)
  private List<GameResponseOffersInner> offers = new ArrayList<>();

  public static final String SERIALIZED_NAME_OFFICIAL_STORES = "official_stores";
  @SerializedName(SERIALIZED_NAME_OFFICIAL_STORES)
  private List<GameResponseOfficialStoresInner> officialStores = new ArrayList<>();

  public static final String SERIALIZED_NAME_MICRO_TRAILER = "micro_trailer";
  @SerializedName(SERIALIZED_NAME_MICRO_TRAILER)
  private URI microTrailer;

  public GameResponse() {
  }

  public GameResponse id(Integer id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nullable
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public GameResponse name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  @javax.annotation.Nullable
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public GameResponse image(URI image) {
    this.image = image;
    return this;
  }

  /**
   * Get image
   * @return image
   */
  @javax.annotation.Nullable
  public URI getImage() {
    return image;
  }

  public void setImage(URI image) {
    this.image = image;
  }


  public GameResponse gameplay(URI gameplay) {
    this.gameplay = gameplay;
    return this;
  }

  /**
   * Get gameplay
   * @return gameplay
   */
  @javax.annotation.Nullable
  public URI getGameplay() {
    return gameplay;
  }

  public void setGameplay(URI gameplay) {
    this.gameplay = gameplay;
  }


  public GameResponse link(URI link) {
    this.link = link;
    return this;
  }

  /**
   * Get link
   * @return link
   */
  @javax.annotation.Nullable
  public URI getLink() {
    return link;
  }

  public void setLink(URI link) {
    this.link = link;
  }


  public GameResponse xUrl(URI xUrl) {
    this.xUrl = xUrl;
    return this;
  }

  /**
   * Get xUrl
   * @return xUrl
   */
  @javax.annotation.Nullable
  public URI getxUrl() {
    return xUrl;
  }

  public void setxUrl(URI xUrl) {
    this.xUrl = xUrl;
  }


  public GameResponse rating(GameResponseRating rating) {
    this.rating = rating;
    return this;
  }

  /**
   * Get rating
   * @return rating
   */
  @javax.annotation.Nullable
  public GameResponseRating getRating() {
    return rating;
  }

  public void setRating(GameResponseRating rating) {
    this.rating = rating;
  }


  public GameResponse description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  @javax.annotation.Nullable
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  public GameResponse shortDescription(String shortDescription) {
    this.shortDescription = shortDescription;
    return this;
  }

  /**
   * Get shortDescription
   * @return shortDescription
   */
  @javax.annotation.Nullable
  public String getShortDescription() {
    return shortDescription;
  }

  public void setShortDescription(String shortDescription) {
    this.shortDescription = shortDescription;
  }


  public GameResponse releaseDate(LocalDate releaseDate) {
    this.releaseDate = releaseDate;
    return this;
  }

  /**
   * Get releaseDate
   * @return releaseDate
   */
  @javax.annotation.Nullable
  public LocalDate getReleaseDate() {
    return releaseDate;
  }

  public void setReleaseDate(LocalDate releaseDate) {
    this.releaseDate = releaseDate;
  }


  public GameResponse developer(String developer) {
    this.developer = developer;
    return this;
  }

  /**
   * Get developer
   * @return developer
   */
  @javax.annotation.Nullable
  public String getDeveloper() {
    return developer;
  }

  public void setDeveloper(String developer) {
    this.developer = developer;
  }


  public GameResponse playtime(GameResponsePlaytime playtime) {
    this.playtime = playtime;
    return this;
  }

  /**
   * Get playtime
   * @return playtime
   */
  @javax.annotation.Nullable
  public GameResponsePlaytime getPlaytime() {
    return playtime;
  }

  public void setPlaytime(GameResponsePlaytime playtime) {
    this.playtime = playtime;
  }


  public GameResponse platforms(List<GameResponsePlatformsInner> platforms) {
    this.platforms = platforms;
    return this;
  }

  public GameResponse addPlatformsItem(GameResponsePlatformsInner platformsItem) {
    if (this.platforms == null) {
      this.platforms = new ArrayList<>();
    }
    this.platforms.add(platformsItem);
    return this;
  }

  /**
   * Get platforms
   * @return platforms
   */
  @javax.annotation.Nullable
  public List<GameResponsePlatformsInner> getPlatforms() {
    return platforms;
  }

  public void setPlatforms(List<GameResponsePlatformsInner> platforms) {
    this.platforms = platforms;
  }


  public GameResponse tags(List<String> tags) {
    this.tags = tags;
    return this;
  }

  public GameResponse addTagsItem(String tagsItem) {
    if (this.tags == null) {
      this.tags = new ArrayList<>();
    }
    this.tags.add(tagsItem);
    return this;
  }

  /**
   * Get tags
   * @return tags
   */
  @javax.annotation.Nullable
  public List<String> getTags() {
    return tags;
  }

  public void setTags(List<String> tags) {
    this.tags = tags;
  }


  public GameResponse genres(List<GameResponsePlatformsInner> genres) {
    this.genres = genres;
    return this;
  }

  public GameResponse addGenresItem(GameResponsePlatformsInner genresItem) {
    if (this.genres == null) {
      this.genres = new ArrayList<>();
    }
    this.genres.add(genresItem);
    return this;
  }

  /**
   * Get genres
   * @return genres
   */
  @javax.annotation.Nullable
  public List<GameResponsePlatformsInner> getGenres() {
    return genres;
  }

  public void setGenres(List<GameResponsePlatformsInner> genres) {
    this.genres = genres;
  }


  public GameResponse genre(String genre) {
    this.genre = genre;
    return this;
  }

  /**
   * Get genre
   * @return genre
   */
  @javax.annotation.Nullable
  public String getGenre() {
    return genre;
  }

  public void setGenre(String genre) {
    this.genre = genre;
  }


  public GameResponse themes(List<GameResponsePlatformsInner> themes) {
    this.themes = themes;
    return this;
  }

  public GameResponse addThemesItem(GameResponsePlatformsInner themesItem) {
    if (this.themes == null) {
      this.themes = new ArrayList<>();
    }
    this.themes.add(themesItem);
    return this;
  }

  /**
   * Get themes
   * @return themes
   */
  @javax.annotation.Nullable
  public List<GameResponsePlatformsInner> getThemes() {
    return themes;
  }

  public void setThemes(List<GameResponsePlatformsInner> themes) {
    this.themes = themes;
  }


  public GameResponse adultOnly(Boolean adultOnly) {
    this.adultOnly = adultOnly;
    return this;
  }

  /**
   * Get adultOnly
   * @return adultOnly
   */
  @javax.annotation.Nullable
  public Boolean getAdultOnly() {
    return adultOnly;
  }

  public void setAdultOnly(Boolean adultOnly) {
    this.adultOnly = adultOnly;
  }


  public GameResponse playModes(List<GameResponsePlatformsInner> playModes) {
    this.playModes = playModes;
    return this;
  }

  public GameResponse addPlayModesItem(GameResponsePlatformsInner playModesItem) {
    if (this.playModes == null) {
      this.playModes = new ArrayList<>();
    }
    this.playModes.add(playModesItem);
    return this;
  }

  /**
   * Get playModes
   * @return playModes
   */
  @javax.annotation.Nullable
  public List<GameResponsePlatformsInner> getPlayModes() {
    return playModes;
  }

  public void setPlayModes(List<GameResponsePlatformsInner> playModes) {
    this.playModes = playModes;
  }


  public GameResponse screenshots(List<URI> screenshots) {
    this.screenshots = screenshots;
    return this;
  }

  public GameResponse addScreenshotsItem(URI screenshotsItem) {
    if (this.screenshots == null) {
      this.screenshots = new ArrayList<>();
    }
    this.screenshots.add(screenshotsItem);
    return this;
  }

  /**
   * Get screenshots
   * @return screenshots
   */
  @javax.annotation.Nullable
  public List<URI> getScreenshots() {
    return screenshots;
  }

  public void setScreenshots(List<URI> screenshots) {
    this.screenshots = screenshots;
  }


  public GameResponse videos(List<URI> videos) {
    this.videos = videos;
    return this;
  }

  public GameResponse addVideosItem(URI videosItem) {
    if (this.videos == null) {
      this.videos = new ArrayList<>();
    }
    this.videos.add(videosItem);
    return this;
  }

  /**
   * Get videos
   * @return videos
   */
  @javax.annotation.Nullable
  public List<URI> getVideos() {
    return videos;
  }

  public void setVideos(List<URI> videos) {
    this.videos = videos;
  }


  public GameResponse offers(List<GameResponseOffersInner> offers) {
    this.offers = offers;
    return this;
  }

  public GameResponse addOffersItem(GameResponseOffersInner offersItem) {
    if (this.offers == null) {
      this.offers = new ArrayList<>();
    }
    this.offers.add(offersItem);
    return this;
  }

  /**
   * Get offers
   * @return offers
   */
  @javax.annotation.Nullable
  public List<GameResponseOffersInner> getOffers() {
    return offers;
  }

  public void setOffers(List<GameResponseOffersInner> offers) {
    this.offers = offers;
  }


  public GameResponse officialStores(List<GameResponseOfficialStoresInner> officialStores) {
    this.officialStores = officialStores;
    return this;
  }

  public GameResponse addOfficialStoresItem(GameResponseOfficialStoresInner officialStoresItem) {
    if (this.officialStores == null) {
      this.officialStores = new ArrayList<>();
    }
    this.officialStores.add(officialStoresItem);
    return this;
  }

  /**
   * Get officialStores
   * @return officialStores
   */
  @javax.annotation.Nullable
  public List<GameResponseOfficialStoresInner> getOfficialStores() {
    return officialStores;
  }

  public void setOfficialStores(List<GameResponseOfficialStoresInner> officialStores) {
    this.officialStores = officialStores;
  }


  public GameResponse microTrailer(URI microTrailer) {
    this.microTrailer = microTrailer;
    return this;
  }

  /**
   * Get microTrailer
   * @return microTrailer
   */
  @javax.annotation.Nullable
  public URI getMicroTrailer() {
    return microTrailer;
  }

  public void setMicroTrailer(URI microTrailer) {
    this.microTrailer = microTrailer;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GameResponse gameResponse = (GameResponse) o;
    return Objects.equals(this.id, gameResponse.id) &&
        Objects.equals(this.name, gameResponse.name) &&
        Objects.equals(this.image, gameResponse.image) &&
        Objects.equals(this.gameplay, gameResponse.gameplay) &&
        Objects.equals(this.link, gameResponse.link) &&
        Objects.equals(this.xUrl, gameResponse.xUrl) &&
        Objects.equals(this.rating, gameResponse.rating) &&
        Objects.equals(this.description, gameResponse.description) &&
        Objects.equals(this.shortDescription, gameResponse.shortDescription) &&
        Objects.equals(this.releaseDate, gameResponse.releaseDate) &&
        Objects.equals(this.developer, gameResponse.developer) &&
        Objects.equals(this.playtime, gameResponse.playtime) &&
        Objects.equals(this.platforms, gameResponse.platforms) &&
        Objects.equals(this.tags, gameResponse.tags) &&
        Objects.equals(this.genres, gameResponse.genres) &&
        Objects.equals(this.genre, gameResponse.genre) &&
        Objects.equals(this.themes, gameResponse.themes) &&
        Objects.equals(this.adultOnly, gameResponse.adultOnly) &&
        Objects.equals(this.playModes, gameResponse.playModes) &&
        Objects.equals(this.screenshots, gameResponse.screenshots) &&
        Objects.equals(this.videos, gameResponse.videos) &&
        Objects.equals(this.offers, gameResponse.offers) &&
        Objects.equals(this.officialStores, gameResponse.officialStores) &&
        Objects.equals(this.microTrailer, gameResponse.microTrailer);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, image, gameplay, link, xUrl, rating, description, shortDescription, releaseDate, developer, playtime, platforms, tags, genres, genre, themes, adultOnly, playModes, screenshots, videos, offers, officialStores, microTrailer);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GameResponse {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    gameplay: ").append(toIndentedString(gameplay)).append("\n");
    sb.append("    link: ").append(toIndentedString(link)).append("\n");
    sb.append("    xUrl: ").append(toIndentedString(xUrl)).append("\n");
    sb.append("    rating: ").append(toIndentedString(rating)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    shortDescription: ").append(toIndentedString(shortDescription)).append("\n");
    sb.append("    releaseDate: ").append(toIndentedString(releaseDate)).append("\n");
    sb.append("    developer: ").append(toIndentedString(developer)).append("\n");
    sb.append("    playtime: ").append(toIndentedString(playtime)).append("\n");
    sb.append("    platforms: ").append(toIndentedString(platforms)).append("\n");
    sb.append("    tags: ").append(toIndentedString(tags)).append("\n");
    sb.append("    genres: ").append(toIndentedString(genres)).append("\n");
    sb.append("    genre: ").append(toIndentedString(genre)).append("\n");
    sb.append("    themes: ").append(toIndentedString(themes)).append("\n");
    sb.append("    adultOnly: ").append(toIndentedString(adultOnly)).append("\n");
    sb.append("    playModes: ").append(toIndentedString(playModes)).append("\n");
    sb.append("    screenshots: ").append(toIndentedString(screenshots)).append("\n");
    sb.append("    videos: ").append(toIndentedString(videos)).append("\n");
    sb.append("    offers: ").append(toIndentedString(offers)).append("\n");
    sb.append("    officialStores: ").append(toIndentedString(officialStores)).append("\n");
    sb.append("    microTrailer: ").append(toIndentedString(microTrailer)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("id");
    openapiFields.add("name");
    openapiFields.add("image");
    openapiFields.add("gameplay");
    openapiFields.add("link");
    openapiFields.add("x_url");
    openapiFields.add("rating");
    openapiFields.add("description");
    openapiFields.add("short_description");
    openapiFields.add("release_date");
    openapiFields.add("developer");
    openapiFields.add("playtime");
    openapiFields.add("platforms");
    openapiFields.add("tags");
    openapiFields.add("genres");
    openapiFields.add("genre");
    openapiFields.add("themes");
    openapiFields.add("adult_only");
    openapiFields.add("play_modes");
    openapiFields.add("screenshots");
    openapiFields.add("videos");
    openapiFields.add("offers");
    openapiFields.add("official_stores");
    openapiFields.add("micro_trailer");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GameResponse
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GameResponse.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GameResponse is not found in the empty JSON string", GameResponse.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GameResponse.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GameResponse` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("image") != null && !jsonObj.get("image").isJsonNull()) && !jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
      if ((jsonObj.get("gameplay") != null && !jsonObj.get("gameplay").isJsonNull()) && !jsonObj.get("gameplay").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `gameplay` to be a primitive type in the JSON string but got `%s`", jsonObj.get("gameplay").toString()));
      }
      if ((jsonObj.get("link") != null && !jsonObj.get("link").isJsonNull()) && !jsonObj.get("link").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `link` to be a primitive type in the JSON string but got `%s`", jsonObj.get("link").toString()));
      }
      if ((jsonObj.get("x_url") != null && !jsonObj.get("x_url").isJsonNull()) && !jsonObj.get("x_url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `x_url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("x_url").toString()));
      }
      // validate the optional field `rating`
      if (jsonObj.get("rating") != null && !jsonObj.get("rating").isJsonNull()) {
        GameResponseRating.validateJsonElement(jsonObj.get("rating"));
      }
      if ((jsonObj.get("description") != null && !jsonObj.get("description").isJsonNull()) && !jsonObj.get("description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("description").toString()));
      }
      if ((jsonObj.get("short_description") != null && !jsonObj.get("short_description").isJsonNull()) && !jsonObj.get("short_description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `short_description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("short_description").toString()));
      }
      if ((jsonObj.get("developer") != null && !jsonObj.get("developer").isJsonNull()) && !jsonObj.get("developer").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `developer` to be a primitive type in the JSON string but got `%s`", jsonObj.get("developer").toString()));
      }
      // validate the optional field `playtime`
      if (jsonObj.get("playtime") != null && !jsonObj.get("playtime").isJsonNull()) {
        GameResponsePlaytime.validateJsonElement(jsonObj.get("playtime"));
      }
      if (jsonObj.get("platforms") != null && !jsonObj.get("platforms").isJsonNull()) {
        JsonArray jsonArrayplatforms = jsonObj.getAsJsonArray("platforms");
        if (jsonArrayplatforms != null) {
          // ensure the json data is an array
          if (!jsonObj.get("platforms").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `platforms` to be an array in the JSON string but got `%s`", jsonObj.get("platforms").toString()));
          }

          // validate the optional field `platforms` (array)
          for (int i = 0; i < jsonArrayplatforms.size(); i++) {
            GameResponsePlatformsInner.validateJsonElement(jsonArrayplatforms.get(i));
          };
        }
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("tags") != null && !jsonObj.get("tags").isJsonNull() && !jsonObj.get("tags").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `tags` to be an array in the JSON string but got `%s`", jsonObj.get("tags").toString()));
      }
      if (jsonObj.get("genres") != null && !jsonObj.get("genres").isJsonNull()) {
        JsonArray jsonArraygenres = jsonObj.getAsJsonArray("genres");
        if (jsonArraygenres != null) {
          // ensure the json data is an array
          if (!jsonObj.get("genres").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `genres` to be an array in the JSON string but got `%s`", jsonObj.get("genres").toString()));
          }

          // validate the optional field `genres` (array)
          for (int i = 0; i < jsonArraygenres.size(); i++) {
            GameResponsePlatformsInner.validateJsonElement(jsonArraygenres.get(i));
          };
        }
      }
      if ((jsonObj.get("genre") != null && !jsonObj.get("genre").isJsonNull()) && !jsonObj.get("genre").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `genre` to be a primitive type in the JSON string but got `%s`", jsonObj.get("genre").toString()));
      }
      if (jsonObj.get("themes") != null && !jsonObj.get("themes").isJsonNull()) {
        JsonArray jsonArraythemes = jsonObj.getAsJsonArray("themes");
        if (jsonArraythemes != null) {
          // ensure the json data is an array
          if (!jsonObj.get("themes").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `themes` to be an array in the JSON string but got `%s`", jsonObj.get("themes").toString()));
          }

          // validate the optional field `themes` (array)
          for (int i = 0; i < jsonArraythemes.size(); i++) {
            GameResponsePlatformsInner.validateJsonElement(jsonArraythemes.get(i));
          };
        }
      }
      if (jsonObj.get("play_modes") != null && !jsonObj.get("play_modes").isJsonNull()) {
        JsonArray jsonArrayplayModes = jsonObj.getAsJsonArray("play_modes");
        if (jsonArrayplayModes != null) {
          // ensure the json data is an array
          if (!jsonObj.get("play_modes").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `play_modes` to be an array in the JSON string but got `%s`", jsonObj.get("play_modes").toString()));
          }

          // validate the optional field `play_modes` (array)
          for (int i = 0; i < jsonArrayplayModes.size(); i++) {
            GameResponsePlatformsInner.validateJsonElement(jsonArrayplayModes.get(i));
          };
        }
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("screenshots") != null && !jsonObj.get("screenshots").isJsonNull() && !jsonObj.get("screenshots").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `screenshots` to be an array in the JSON string but got `%s`", jsonObj.get("screenshots").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("videos") != null && !jsonObj.get("videos").isJsonNull() && !jsonObj.get("videos").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `videos` to be an array in the JSON string but got `%s`", jsonObj.get("videos").toString()));
      }
      if (jsonObj.get("offers") != null && !jsonObj.get("offers").isJsonNull()) {
        JsonArray jsonArrayoffers = jsonObj.getAsJsonArray("offers");
        if (jsonArrayoffers != null) {
          // ensure the json data is an array
          if (!jsonObj.get("offers").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `offers` to be an array in the JSON string but got `%s`", jsonObj.get("offers").toString()));
          }

          // validate the optional field `offers` (array)
          for (int i = 0; i < jsonArrayoffers.size(); i++) {
            GameResponseOffersInner.validateJsonElement(jsonArrayoffers.get(i));
          };
        }
      }
      if (jsonObj.get("official_stores") != null && !jsonObj.get("official_stores").isJsonNull()) {
        JsonArray jsonArrayofficialStores = jsonObj.getAsJsonArray("official_stores");
        if (jsonArrayofficialStores != null) {
          // ensure the json data is an array
          if (!jsonObj.get("official_stores").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `official_stores` to be an array in the JSON string but got `%s`", jsonObj.get("official_stores").toString()));
          }

          // validate the optional field `official_stores` (array)
          for (int i = 0; i < jsonArrayofficialStores.size(); i++) {
            GameResponseOfficialStoresInner.validateJsonElement(jsonArrayofficialStores.get(i));
          };
        }
      }
      if ((jsonObj.get("micro_trailer") != null && !jsonObj.get("micro_trailer").isJsonNull()) && !jsonObj.get("micro_trailer").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `micro_trailer` to be a primitive type in the JSON string but got `%s`", jsonObj.get("micro_trailer").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GameResponse.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GameResponse' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GameResponse> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GameResponse.class));

       return (TypeAdapter<T>) new TypeAdapter<GameResponse>() {
           @Override
           public void write(JsonWriter out, GameResponse value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GameResponse read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GameResponse given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GameResponse
   * @throws IOException if the JSON string is invalid with respect to GameResponse
   */
  public static GameResponse fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GameResponse.class);
  }

  /**
   * Convert an instance of GameResponse to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

