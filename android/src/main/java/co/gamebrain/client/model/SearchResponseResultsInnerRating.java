/**
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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchResponseResultsInnerRating {
  
  @SerializedName("mean")
  private BigDecimal mean = null;
  @SerializedName("count")
  private BigDecimal count = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getMean() {
    return mean;
  }
  public void setMean(BigDecimal mean) {
    this.mean = mean;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getCount() {
    return count;
  }
  public void setCount(BigDecimal count) {
    this.count = count;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchResponseResultsInnerRating searchResponseResultsInnerRating = (SearchResponseResultsInnerRating) o;
    return (this.mean == null ? searchResponseResultsInnerRating.mean == null : this.mean.equals(searchResponseResultsInnerRating.mean)) &&
        (this.count == null ? searchResponseResultsInnerRating.count == null : this.count.equals(searchResponseResultsInnerRating.count));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.mean == null ? 0: this.mean.hashCode());
    result = 31 * result + (this.count == null ? 0: this.count.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchResponseResultsInnerRating {\n");
    
    sb.append("  mean: ").append(mean).append("\n");
    sb.append("  count: ").append(count).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
