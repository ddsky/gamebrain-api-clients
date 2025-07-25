/*
 * GameBrain API
 *
 * GameBrain API
 *
 * The version of the OpenAPI document: 1.0.1
 * Contact: mail@gamebrain.co
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = gamebrain.Client.OpenAPIDateConverter;

namespace gamebrain.Model
{
    /// <summary>
    /// SearchSuggestionResponseResultsInner
    /// </summary>
    [DataContract(Name = "SearchSuggestionResponse_results_inner")]
    public partial class SearchSuggestionResponseResultsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchSuggestionResponseResultsInner" /> class.
        /// </summary>
        /// <param name="id">id.</param>
        /// <param name="year">year.</param>
        /// <param name="name">name.</param>
        /// <param name="genre">genre.</param>
        /// <param name="image">image.</param>
        /// <param name="link">link.</param>
        /// <param name="rating">rating.</param>
        /// <param name="adultOnly">adultOnly.</param>
        public SearchSuggestionResponseResultsInner(int id = default(int), decimal year = default(decimal), string name = default(string), string genre = default(string), string image = default(string), string link = default(string), SearchResponseResultsInnerRating rating = default(SearchResponseResultsInnerRating), bool adultOnly = default(bool))
        {
            this.Id = id;
            this.Year = year;
            this.Name = name;
            this.Genre = genre;
            this.Image = image;
            this.Link = link;
            this.Rating = rating;
            this.AdultOnly = adultOnly;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Year
        /// </summary>
        [DataMember(Name = "year", EmitDefaultValue = false)]
        public decimal Year { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Genre
        /// </summary>
        [DataMember(Name = "genre", EmitDefaultValue = false)]
        public string Genre { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", EmitDefaultValue = false)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets Link
        /// </summary>
        [DataMember(Name = "link", EmitDefaultValue = false)]
        public string Link { get; set; }

        /// <summary>
        /// Gets or Sets Rating
        /// </summary>
        [DataMember(Name = "rating", EmitDefaultValue = false)]
        public SearchResponseResultsInnerRating Rating { get; set; }

        /// <summary>
        /// Gets or Sets AdultOnly
        /// </summary>
        [DataMember(Name = "adult_only", EmitDefaultValue = true)]
        public bool AdultOnly { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchSuggestionResponseResultsInner {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Year: ").Append(Year).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Genre: ").Append(Genre).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Link: ").Append(Link).Append("\n");
            sb.Append("  Rating: ").Append(Rating).Append("\n");
            sb.Append("  AdultOnly: ").Append(AdultOnly).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
