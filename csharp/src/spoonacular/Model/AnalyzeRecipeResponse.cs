using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace spoonacular.Model
{
    public class AnalyzeRecipeResponse
    {
        public bool vegetarian { get; set; }
        public bool vegan { get; set; }
        public bool glutenFree { get; set; }
        public bool dairyFree { get; set; }
        public bool veryHealthy { get; set; }
        public bool cheap { get; set; }
        public bool veryPopular { get; set; }
        public bool sustainable { get; set; }
        public bool lowFodmap { get; set; }
        public int weightWatcherSmartPoints { get; set; }
        public string gaps { get; set; }
        public object preparationMinutes { get; set; }
        public object cookingMinutes { get; set; }
        public int aggregateLikes { get; set; }
        public int healthScore { get; set; }
        public string creditsText { get; set; }
        public string sourceName { get; set; }
        public float pricePerServing { get; set; }
        public ExtendedIngredient[] extendedIngredients { get; set; }
        public int id { get; set; }
        public string title { get; set; }
        public int readyInMinutes { get; set; }
        public int servings { get; set; }
        public Nutrition nutrition { get; set; }
        public object summary { get; set; }
        public string[] cuisines { get; set; }
        public string[] dishTypes { get; set; }
        public string[] diets { get; set; }
        public string[] occasions { get; set; }
        public string instructions { get; set; }
        public AnalyzedInstruction[] analyzedInstructions { get; set; }
        public object originalId { get; set; }
        public float spoonacularScore { get; set; }
    }

    public class Nutrition
    {
        public Nutrient[] nutrients { get; set; }
        public Property1[] properties { get; set; }
        public Flavonoid[] flavonoids { get; set; }
        public Ingredient[] ingredients { get; set; }
        public CaloricBreakdown caloricBreakdown { get; set; }
        public WeightPerServing weightPerServing { get; set; }
    }

    public class CaloricBreakdown
    {
        public float percentProtein { get; set; }
        public float percentFat { get; set; }
        public float percentCarbs { get; set; }
    }

    public class WeightPerServing
    {
        public int amount { get; set; }
        public string unit { get; set; }
    }

    public class Nutrient
    {
        public string name { get; set; }
        public float amount { get; set; }
        public string unit { get; set; }
        public float percentOfDailyNeeds { get; set; }
    }

    public class Property1
    {
        public string name { get; set; }
        public float amount { get; set; }
        public string unit { get; set; }
    }

    public class Flavonoid
    {
        public string name { get; set; }
        public float amount { get; set; }
        public string unit { get; set; }
    }

    public class Ingredient
    {
        public int id { get; set; }
        public string name { get; set; }
        public float amount { get; set; }
        public string unit { get; set; }
        public Nutrient1[] nutrients { get; set; }
    }

    public class Nutrient1
    {
        public string name { get; set; }
        public float amount { get; set; }
        public string unit { get; set; }
        public float percentOfDailyNeeds { get; set; }
    }

    public class ExtendedIngredient
    {
        public int id { get; set; }
        public string aisle { get; set; }
        public string image { get; set; }
        public string consistency { get; set; }
        public string name { get; set; }
        public string nameClean { get; set; }
        public string original { get; set; }
        public string originalName { get; set; }
        public float amount { get; set; }
        public string unit { get; set; }
        public string[] meta { get; set; }
        public Measures measures { get; set; }
    }

    public class Measures
    {
        public Us us { get; set; }
        public Metric metric { get; set; }
    }

    public class Us
    {
        public float amount { get; set; }
        public string unitShort { get; set; }
        public string unitLong { get; set; }
    }

    public class Metric
    {
        public float amount { get; set; }
        public string unitShort { get; set; }
        public string unitLong { get; set; }
    }

    public class AnalyzedInstruction
    {
        public string name { get; set; }
        public Step[] steps { get; set; }
    }

    public class Step
    {
        public int number { get; set; }
        public string step { get; set; }
        public Ingredient1[] ingredients { get; set; }
        public Equipment[] equipment { get; set; }
        public Length length { get; set; }
    }

    public class Length
    {
        public int number { get; set; }
        public string unit { get; set; }
    }

    public class Ingredient1
    {
        public int id { get; set; }
        public string name { get; set; }
        public string localizedName { get; set; }
        public string image { get; set; }
    }

    public class Equipment
    {
        public int id { get; set; }
        public string name { get; set; }
        public string localizedName { get; set; }
        public string image { get; set; }
    }
}