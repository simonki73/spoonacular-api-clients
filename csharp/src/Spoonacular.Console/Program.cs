using Newtonsoft.Json.Linq;
using spoonacular.Api;
using spoonacular.Client;
using spoonacular.Model;
using System.Diagnostics;
using System.IO;
using System.Text.Json;

namespace Example
{
    public class Example
    {
        public static void Main()
        {
            Configuration config = new()
            {
                BasePath = "https://api.spoonacular.com"
            };
            // Configure API key authorization: apiKeyScheme
            config.ApiKey.Add("x-api-key", "6cf9f5b58fa44e4e9fb48939fdbcde93");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var analyzeRecipeRequest = new AnalyzeRecipeRequest
            {
                Ingredients = [
                    "1 x 280g block firm tofu",
                    "150g cornflour",
                    "vegetable oil, for frying",
                    "2 lemons",
                    "250ml orange juice",
                    "100g sweet chilli sauce",
                    "1tbsp sriracha or other chilli sauce",
                    "3 tbsp soy sauce",
                    "1 spring onion, to serve",
                    "1 tsp sesame seeds, to serve"
                ],
                Instructions = "First, press the tofu using a tofu press or place it between two clean tea towels, lay it on a plate and put a weight on top | Leave for at least half an hour to drain any liquid and firm up before you start cooking. Carefully slice the pressed tofu into 1cm-wide sticks and spread them out on a board | Sift cornflour over the top, coating the pieces generously | Use tongs or two forks to turn the pieces and sift over more cornflour until the tofu is covered on all sides | The thicker the better with the cornflour as this coating gives the cooked tofu its crunchy texture. Pour enough oil into the pan to fully coat the bottom and heat until it makes the tip of a wooden spoon sizzle | Carefully place the tofu pieces in the pan, with a bit of space around each one (you may need to cook them in batches) | Cook for 5 minutes, turning the pieces every minute or so until they are starting to turn golden brown | Transfer to the plate lined with kitchen paper | Tip away the excess oil in the pan and reduce the heat to medium-high. Cut the lemons in half and squeeze the juice into the pan, catching any pips in your other hand (be careful as the pany may spit) | Add the orange juice, sweet chilli sauce, sriracha and soy sauce and bring to the boil | Simmer for 5-7 minutes until the liquid has reduced to a syrupy consistency. Add the tofu strips back to the pan and stir until fully coated | Continue to cook, stirring regularly, for 5 minutes and then remove from the heat| Finely slice the spring onion and sprinkle over the tofu along with the sesame seeds before serving ",
                Servings = 2,
                Title = "Crispy Chilli Tofu"
            }; // AnalyzeRecipeRequest | Example request body.
            var language = "en";  // string? | The input language, either \"en\" or \"de\". (optional)
            var includeNutrition = true;  // bool? | Whether nutrition data should be added to correctly parsed ingredients. (optional)
            var includeTaste = false;  // bool? | Whether taste data should be added to correctly parsed ingredients. (optional)

            try
            {
                // Analyze Recipe
                var result = (JObject)apiInstance.AnalyzeRecipe(analyzeRecipeRequest, language, includeNutrition, includeTaste);
                // Create a file to write to.
                string resultPath = $"result-{analyzeRecipeRequest.Title}.json";
                using StreamWriter swResult = File.CreateText(resultPath);
                swResult.Write(result.ToString());

                // Create a file to write to.
                var response = result.ToObject<AnalyzeRecipeResponse>();
                string responsePath = $"response-{response.title}.json";
                using StreamWriter swResponse = File.CreateText(responsePath);
                swResponse.Write(JsonSerializer.Serialize(response));

                

                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling DefaultApi.AnalyzeRecipe: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}