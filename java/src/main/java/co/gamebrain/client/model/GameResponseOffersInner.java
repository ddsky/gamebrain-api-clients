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
import co.gamebrain.client.model.GameResponseOffersInnerPrice;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.net.URI;
import java.util.Arrays;

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
 * GameResponseOffersInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class GameResponseOffersInner {
  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private GameResponseOffersInnerPrice price;

  public static final String SERIALIZED_NAME_STORE_NAME = "store_name";
  @SerializedName(SERIALIZED_NAME_STORE_NAME)
  private String storeName;

  public static final String SERIALIZED_NAME_PLATFORM = "platform";
  @SerializedName(SERIALIZED_NAME_PLATFORM)
  private String platform;

  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private URI url;

  public GameResponseOffersInner() {
  }

  public GameResponseOffersInner price(GameResponseOffersInnerPrice price) {
    this.price = price;
    return this;
  }

  /**
   * Get price
   * @return price
   */
  @javax.annotation.Nullable
  public GameResponseOffersInnerPrice getPrice() {
    return price;
  }

  public void setPrice(GameResponseOffersInnerPrice price) {
    this.price = price;
  }


  public GameResponseOffersInner storeName(String storeName) {
    this.storeName = storeName;
    return this;
  }

  /**
   * Get storeName
   * @return storeName
   */
  @javax.annotation.Nullable
  public String getStoreName() {
    return storeName;
  }

  public void setStoreName(String storeName) {
    this.storeName = storeName;
  }


  public GameResponseOffersInner platform(String platform) {
    this.platform = platform;
    return this;
  }

  /**
   * Get platform
   * @return platform
   */
  @javax.annotation.Nullable
  public String getPlatform() {
    return platform;
  }

  public void setPlatform(String platform) {
    this.platform = platform;
  }


  public GameResponseOffersInner title(String title) {
    this.title = title;
    return this;
  }

  /**
   * Get title
   * @return title
   */
  @javax.annotation.Nullable
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public GameResponseOffersInner url(URI url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
   */
  @javax.annotation.Nullable
  public URI getUrl() {
    return url;
  }

  public void setUrl(URI url) {
    this.url = url;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GameResponseOffersInner gameResponseOffersInner = (GameResponseOffersInner) o;
    return Objects.equals(this.price, gameResponseOffersInner.price) &&
        Objects.equals(this.storeName, gameResponseOffersInner.storeName) &&
        Objects.equals(this.platform, gameResponseOffersInner.platform) &&
        Objects.equals(this.title, gameResponseOffersInner.title) &&
        Objects.equals(this.url, gameResponseOffersInner.url);
  }

  @Override
  public int hashCode() {
    return Objects.hash(price, storeName, platform, title, url);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GameResponseOffersInner {\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    storeName: ").append(toIndentedString(storeName)).append("\n");
    sb.append("    platform: ").append(toIndentedString(platform)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
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
    openapiFields.add("price");
    openapiFields.add("store_name");
    openapiFields.add("platform");
    openapiFields.add("title");
    openapiFields.add("url");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GameResponseOffersInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GameResponseOffersInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GameResponseOffersInner is not found in the empty JSON string", GameResponseOffersInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GameResponseOffersInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GameResponseOffersInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `price`
      if (jsonObj.get("price") != null && !jsonObj.get("price").isJsonNull()) {
        GameResponseOffersInnerPrice.validateJsonElement(jsonObj.get("price"));
      }
      if ((jsonObj.get("store_name") != null && !jsonObj.get("store_name").isJsonNull()) && !jsonObj.get("store_name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `store_name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("store_name").toString()));
      }
      if ((jsonObj.get("platform") != null && !jsonObj.get("platform").isJsonNull()) && !jsonObj.get("platform").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `platform` to be a primitive type in the JSON string but got `%s`", jsonObj.get("platform").toString()));
      }
      if ((jsonObj.get("title") != null && !jsonObj.get("title").isJsonNull()) && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      if ((jsonObj.get("url") != null && !jsonObj.get("url").isJsonNull()) && !jsonObj.get("url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("url").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GameResponseOffersInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GameResponseOffersInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GameResponseOffersInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GameResponseOffersInner.class));

       return (TypeAdapter<T>) new TypeAdapter<GameResponseOffersInner>() {
           @Override
           public void write(JsonWriter out, GameResponseOffersInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GameResponseOffersInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GameResponseOffersInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GameResponseOffersInner
   * @throws IOException if the JSON string is invalid with respect to GameResponseOffersInner
   */
  public static GameResponseOffersInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GameResponseOffersInner.class);
  }

  /**
   * Convert an instance of GameResponseOffersInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

