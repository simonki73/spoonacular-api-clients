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
    /// AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner
    /// </summary>
    [DataContract(Name = "analyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner")]
    public partial class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner" /> class.
        /// </summary>
        /// <param name="number">number (required).</param>
        /// <param name="step">step (required).</param>
        /// <param name="ingredients">ingredients.</param>
        /// <param name="equipment">equipment.</param>
        public AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner(decimal number = default(decimal), string step = default(string), List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> ingredients = default(List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>), List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> equipment = default(List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner>))
        {
            this.Number = number;
            // to ensure "step" is required (not null)
            if (step == null)
            {
                throw new ArgumentNullException("step is a required property for AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner and cannot be null");
            }
            this.Step = step;
            this.Ingredients = ingredients;
            this.Equipment = equipment;
        }

        /// <summary>
        /// Gets or Sets Number
        /// </summary>
        [DataMember(Name = "number", IsRequired = true, EmitDefaultValue = true)]
        public decimal Number { get; set; }

        /// <summary>
        /// Gets or Sets Step
        /// </summary>
        [DataMember(Name = "step", IsRequired = true, EmitDefaultValue = true)]
        public string Step { get; set; }

        /// <summary>
        /// Gets or Sets Ingredients
        /// </summary>
        [DataMember(Name = "ingredients", EmitDefaultValue = false)]
        public List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> Ingredients { get; set; }

        /// <summary>
        /// Gets or Sets Equipment
        /// </summary>
        [DataMember(Name = "equipment", EmitDefaultValue = false)]
        public List<AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner> Equipment { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner {\n");
            sb.Append("  Number: ").Append(Number).Append("\n");
            sb.Append("  Step: ").Append(Step).Append("\n");
            sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
            sb.Append("  Equipment: ").Append(Equipment).Append("\n");
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
            // Step (string) minLength
            if (this.Step != null && this.Step.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Step, length must be greater than 1.", new [] { "Step" });
            }

            yield break;
        }
    }

}
