/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
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
using OpenAPIDateConverter = spoonacular.Client.OpenAPIDateConverter;

namespace spoonacular.Model
{
    /// <summary>
    /// AddToShoppingListRequest
    /// </summary>
    [DataContract(Name = "addToShoppingList_request")]
    public partial class AddToShoppingListRequest : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AddToShoppingListRequest" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected AddToShoppingListRequest() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="AddToShoppingListRequest" /> class.
        /// </summary>
        /// <param name="item">item (required).</param>
        /// <param name="aisle">aisle (required).</param>
        /// <param name="parse">parse (required).</param>
        public AddToShoppingListRequest(string item = default(string), string aisle = default(string), bool parse = default(bool))
        {
            // to ensure "item" is required (not null)
            if (item == null)
            {
                throw new ArgumentNullException("item is a required property for AddToShoppingListRequest and cannot be null");
            }
            this.Item = item;
            // to ensure "aisle" is required (not null)
            if (aisle == null)
            {
                throw new ArgumentNullException("aisle is a required property for AddToShoppingListRequest and cannot be null");
            }
            this.Aisle = aisle;
            this.Parse = parse;
        }

        /// <summary>
        /// Gets or Sets Item
        /// </summary>
        [DataMember(Name = "item", IsRequired = true, EmitDefaultValue = true)]
        public string Item { get; set; }

        /// <summary>
        /// Gets or Sets Aisle
        /// </summary>
        [DataMember(Name = "aisle", IsRequired = true, EmitDefaultValue = true)]
        public string Aisle { get; set; }

        /// <summary>
        /// Gets or Sets Parse
        /// </summary>
        [DataMember(Name = "parse", IsRequired = true, EmitDefaultValue = true)]
        public bool Parse { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class AddToShoppingListRequest {\n");
            sb.Append("  Item: ").Append(Item).Append("\n");
            sb.Append("  Aisle: ").Append(Aisle).Append("\n");
            sb.Append("  Parse: ").Append(Parse).Append("\n");
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
            // Item (string) minLength
            if (this.Item != null && this.Item.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Item, length must be greater than 1.", new [] { "Item" });
            }

            // Aisle (string) minLength
            if (this.Aisle != null && this.Aisle.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Aisle, length must be greater than 1.", new [] { "Aisle" });
            }

            yield break;
        }
    }

}
