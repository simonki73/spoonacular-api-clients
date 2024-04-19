QT += network

HEADERS += \
# Models
    $${PWD}/OAIAddMealPlanTemplate_200_response.h \
    $${PWD}/OAIAddMealPlanTemplate_200_response_items_inner.h \
    $${PWD}/OAIAddMealPlanTemplate_200_response_items_inner_value.h \
    $${PWD}/OAIAddToMealPlan_request.h \
    $${PWD}/OAIAddToMealPlan_request_value.h \
    $${PWD}/OAIAddToMealPlan_request_value_ingredients_inner.h \
    $${PWD}/OAIAddToShoppingList_request.h \
    $${PWD}/OAIAnalyzeARecipeSearchQuery_200_response.h \
    $${PWD}/OAIAnalyzeARecipeSearchQuery_200_response_dishes_inner.h \
    $${PWD}/OAIAnalyzeARecipeSearchQuery_200_response_ingredients_inner.h \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response.h \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_ingredients_inner.h \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner.h \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner.h \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner.h \
    $${PWD}/OAIAnalyzeRecipe_request.h \
    $${PWD}/OAIAutocompleteIngredientSearch_200_response_inner.h \
    $${PWD}/OAIAutocompleteMenuItemSearch_200_response.h \
    $${PWD}/OAIAutocompleteProductSearch_200_response.h \
    $${PWD}/OAIAutocompleteProductSearch_200_response_results_inner.h \
    $${PWD}/OAIAutocompleteRecipeSearch_200_response_inner.h \
    $${PWD}/OAIClassifyCuisine_200_response.h \
    $${PWD}/OAIClassifyGroceryProductBulk_200_response_inner.h \
    $${PWD}/OAIClassifyGroceryProductBulk_request_inner.h \
    $${PWD}/OAIClassifyGroceryProduct_200_response.h \
    $${PWD}/OAIClassifyGroceryProduct_request.h \
    $${PWD}/OAIComputeGlycemicLoad_200_response.h \
    $${PWD}/OAIComputeGlycemicLoad_200_response_ingredients_inner.h \
    $${PWD}/OAIComputeGlycemicLoad_request.h \
    $${PWD}/OAIComputeIngredientAmount_200_response.h \
    $${PWD}/OAIConnectUser_200_response.h \
    $${PWD}/OAIConnectUser_request.h \
    $${PWD}/OAIConvertAmounts_200_response.h \
    $${PWD}/OAICreateRecipeCard_200_response.h \
    $${PWD}/OAIDetectFoodInText_200_response.h \
    $${PWD}/OAIDetectFoodInText_200_response_annotations_inner.h \
    $${PWD}/OAIGenerateMealPlan_200_response.h \
    $${PWD}/OAIGenerateMealPlan_200_response_nutrients.h \
    $${PWD}/OAIGenerateShoppingList_200_response.h \
    $${PWD}/OAIGetARandomFoodJoke_200_response.h \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response.h \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_ingredients_inner.h \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_parsedInstructions_inner.h \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_parsedInstructions_inner_steps_inner.h \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner.h \
    $${PWD}/OAIGetComparableProducts_200_response.h \
    $${PWD}/OAIGetComparableProducts_200_response_comparableProducts.h \
    $${PWD}/OAIGetComparableProducts_200_response_comparableProducts_protein_inner.h \
    $${PWD}/OAIGetConversationSuggests_200_response.h \
    $${PWD}/OAIGetConversationSuggests_200_response_suggests.h \
    $${PWD}/OAIGetConversationSuggests_200_response_suggests___inner.h \
    $${PWD}/OAIGetDishPairingForWine_200_response.h \
    $${PWD}/OAIGetIngredientInformation_200_response.h \
    $${PWD}/OAIGetIngredientInformation_200_response_nutrition.h \
    $${PWD}/OAIGetIngredientSubstitutes_200_response.h \
    $${PWD}/OAIGetMealPlanTemplate_200_response.h \
    $${PWD}/OAIGetMealPlanTemplate_200_response_days_inner.h \
    $${PWD}/OAIGetMealPlanTemplate_200_response_days_inner_items_inner.h \
    $${PWD}/OAIGetMealPlanTemplate_200_response_days_inner_items_inner_value.h \
    $${PWD}/OAIGetMealPlanTemplates_200_response.h \
    $${PWD}/OAIGetMealPlanWeek_200_response.h \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner.h \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_items_inner.h \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_items_inner_value.h \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary.h \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner.h \
    $${PWD}/OAIGetMenuItemInformation_200_response.h \
    $${PWD}/OAIGetProductInformation_200_response.h \
    $${PWD}/OAIGetProductInformation_200_response_ingredients_inner.h \
    $${PWD}/OAIGetRandomFoodTrivia_200_response.h \
    $${PWD}/OAIGetRandomRecipes_200_response.h \
    $${PWD}/OAIGetRandomRecipes_200_response_recipes_inner.h \
    $${PWD}/OAIGetRecipeEquipmentByID_200_response.h \
    $${PWD}/OAIGetRecipeEquipmentByID_200_response_equipment_inner.h \
    $${PWD}/OAIGetRecipeInformationBulk_200_response_inner.h \
    $${PWD}/OAIGetRecipeInformation_200_response.h \
    $${PWD}/OAIGetRecipeInformation_200_response_extendedIngredients_inner.h \
    $${PWD}/OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures.h \
    $${PWD}/OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures_metric.h \
    $${PWD}/OAIGetRecipeInformation_200_response_winePairing.h \
    $${PWD}/OAIGetRecipeInformation_200_response_winePairing_productMatches_inner.h \
    $${PWD}/OAIGetRecipeIngredientsByID_200_response.h \
    $${PWD}/OAIGetRecipeIngredientsByID_200_response_ingredients_inner.h \
    $${PWD}/OAIGetRecipeNutritionWidgetByID_200_response.h \
    $${PWD}/OAIGetRecipeNutritionWidgetByID_200_response_bad_inner.h \
    $${PWD}/OAIGetRecipeNutritionWidgetByID_200_response_good_inner.h \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response.h \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner.h \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount.h \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric.h \
    $${PWD}/OAIGetRecipeTasteByID_200_response.h \
    $${PWD}/OAIGetShoppingList_200_response.h \
    $${PWD}/OAIGetShoppingList_200_response_aisles_inner.h \
    $${PWD}/OAIGetShoppingList_200_response_aisles_inner_items_inner.h \
    $${PWD}/OAIGetShoppingList_200_response_aisles_inner_items_inner_measures.h \
    $${PWD}/OAIGetSimilarRecipes_200_response_inner.h \
    $${PWD}/OAIGetWineDescription_200_response.h \
    $${PWD}/OAIGetWinePairing_200_response.h \
    $${PWD}/OAIGetWinePairing_200_response_productMatches_inner.h \
    $${PWD}/OAIGetWineRecommendation_200_response.h \
    $${PWD}/OAIGetWineRecommendation_200_response_recommendedWines_inner.h \
    $${PWD}/OAIGuessNutritionByDishName_200_response.h \
    $${PWD}/OAIGuessNutritionByDishName_200_response_calories.h \
    $${PWD}/OAIGuessNutritionByDishName_200_response_calories_confidenceRange95Percent.h \
    $${PWD}/OAIImageAnalysisByURL_200_response.h \
    $${PWD}/OAIImageAnalysisByURL_200_response_category.h \
    $${PWD}/OAIImageAnalysisByURL_200_response_nutrition.h \
    $${PWD}/OAIImageAnalysisByURL_200_response_nutrition_calories.h \
    $${PWD}/OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent.h \
    $${PWD}/OAIImageAnalysisByURL_200_response_recipes_inner.h \
    $${PWD}/OAIImageClassificationByURL_200_response.h \
    $${PWD}/OAIIngredientSearch_200_response.h \
    $${PWD}/OAIIngredientSearch_200_response_results_inner.h \
    $${PWD}/OAIMapIngredientsToGroceryProducts_200_response_inner.h \
    $${PWD}/OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner.h \
    $${PWD}/OAIMapIngredientsToGroceryProducts_request.h \
    $${PWD}/OAIParseIngredients_200_response_inner.h \
    $${PWD}/OAIParseIngredients_200_response_inner_estimatedCost.h \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition.h \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_caloricBreakdown.h \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_nutrients_inner.h \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_properties_inner.h \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_weightPerServing.h \
    $${PWD}/OAIQuickAnswer_200_response.h \
    $${PWD}/OAISearchAllFood_200_response.h \
    $${PWD}/OAISearchAllFood_200_response_searchResults_inner.h \
    $${PWD}/OAISearchAllFood_200_response_searchResults_inner_results_inner.h \
    $${PWD}/OAISearchCustomFoods_200_response.h \
    $${PWD}/OAISearchCustomFoods_200_response_customFoods_inner.h \
    $${PWD}/OAISearchFoodVideos_200_response.h \
    $${PWD}/OAISearchFoodVideos_200_response_videos_inner.h \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response.h \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response_ingredients_inner.h \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response_nutrition.h \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response_servings.h \
    $${PWD}/OAISearchGroceryProducts_200_response.h \
    $${PWD}/OAISearchMenuItems_200_response.h \
    $${PWD}/OAISearchMenuItems_200_response_menuItems_inner.h \
    $${PWD}/OAISearchRecipesByIngredients_200_response_inner.h \
    $${PWD}/OAISearchRecipesByIngredients_200_response_inner_missedIngredients_inner.h \
    $${PWD}/OAISearchRecipesByNutrients_200_response_inner.h \
    $${PWD}/OAISearchRecipes_200_response.h \
    $${PWD}/OAISearchRecipes_200_response_results_inner.h \
    $${PWD}/OAISearchRestaurants_200_response.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_address.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.h \
    $${PWD}/OAISearchSiteContent_200_response.h \
    $${PWD}/OAISearchSiteContent_200_response_Articles_inner.h \
    $${PWD}/OAISearchSiteContent_200_response_Grocery_Products_inner.h \
    $${PWD}/OAISearchSiteContent_200_response_Grocery_Products_inner_dataPoints_inner.h \
    $${PWD}/OAISummarizeRecipe_200_response.h \
    $${PWD}/OAITalkToChatbot_200_response.h \
# APIs
    $${PWD}/OAIDefaultApi.h \
    $${PWD}/OAIIngredientsApi.h \
    $${PWD}/OAIMealPlanningApi.h \
    $${PWD}/OAIMenuItemsApi.h \
    $${PWD}/OAIMiscApi.h \
    $${PWD}/OAIProductsApi.h \
    $${PWD}/OAIRecipesApi.h \
    $${PWD}/OAIWineApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h \
    $${PWD}/OAIOauth.h

SOURCES += \
# Models
    $${PWD}/OAIAddMealPlanTemplate_200_response.cpp \
    $${PWD}/OAIAddMealPlanTemplate_200_response_items_inner.cpp \
    $${PWD}/OAIAddMealPlanTemplate_200_response_items_inner_value.cpp \
    $${PWD}/OAIAddToMealPlan_request.cpp \
    $${PWD}/OAIAddToMealPlan_request_value.cpp \
    $${PWD}/OAIAddToMealPlan_request_value_ingredients_inner.cpp \
    $${PWD}/OAIAddToShoppingList_request.cpp \
    $${PWD}/OAIAnalyzeARecipeSearchQuery_200_response.cpp \
    $${PWD}/OAIAnalyzeARecipeSearchQuery_200_response_dishes_inner.cpp \
    $${PWD}/OAIAnalyzeARecipeSearchQuery_200_response_ingredients_inner.cpp \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response.cpp \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_ingredients_inner.cpp \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner.cpp \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner.cpp \
    $${PWD}/OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner.cpp \
    $${PWD}/OAIAnalyzeRecipe_request.cpp \
    $${PWD}/OAIAutocompleteIngredientSearch_200_response_inner.cpp \
    $${PWD}/OAIAutocompleteMenuItemSearch_200_response.cpp \
    $${PWD}/OAIAutocompleteProductSearch_200_response.cpp \
    $${PWD}/OAIAutocompleteProductSearch_200_response_results_inner.cpp \
    $${PWD}/OAIAutocompleteRecipeSearch_200_response_inner.cpp \
    $${PWD}/OAIClassifyCuisine_200_response.cpp \
    $${PWD}/OAIClassifyGroceryProductBulk_200_response_inner.cpp \
    $${PWD}/OAIClassifyGroceryProductBulk_request_inner.cpp \
    $${PWD}/OAIClassifyGroceryProduct_200_response.cpp \
    $${PWD}/OAIClassifyGroceryProduct_request.cpp \
    $${PWD}/OAIComputeGlycemicLoad_200_response.cpp \
    $${PWD}/OAIComputeGlycemicLoad_200_response_ingredients_inner.cpp \
    $${PWD}/OAIComputeGlycemicLoad_request.cpp \
    $${PWD}/OAIComputeIngredientAmount_200_response.cpp \
    $${PWD}/OAIConnectUser_200_response.cpp \
    $${PWD}/OAIConnectUser_request.cpp \
    $${PWD}/OAIConvertAmounts_200_response.cpp \
    $${PWD}/OAICreateRecipeCard_200_response.cpp \
    $${PWD}/OAIDetectFoodInText_200_response.cpp \
    $${PWD}/OAIDetectFoodInText_200_response_annotations_inner.cpp \
    $${PWD}/OAIGenerateMealPlan_200_response.cpp \
    $${PWD}/OAIGenerateMealPlan_200_response_nutrients.cpp \
    $${PWD}/OAIGenerateShoppingList_200_response.cpp \
    $${PWD}/OAIGetARandomFoodJoke_200_response.cpp \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response.cpp \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_ingredients_inner.cpp \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_parsedInstructions_inner.cpp \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_parsedInstructions_inner_steps_inner.cpp \
    $${PWD}/OAIGetAnalyzedRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner.cpp \
    $${PWD}/OAIGetComparableProducts_200_response.cpp \
    $${PWD}/OAIGetComparableProducts_200_response_comparableProducts.cpp \
    $${PWD}/OAIGetComparableProducts_200_response_comparableProducts_protein_inner.cpp \
    $${PWD}/OAIGetConversationSuggests_200_response.cpp \
    $${PWD}/OAIGetConversationSuggests_200_response_suggests.cpp \
    $${PWD}/OAIGetConversationSuggests_200_response_suggests___inner.cpp \
    $${PWD}/OAIGetDishPairingForWine_200_response.cpp \
    $${PWD}/OAIGetIngredientInformation_200_response.cpp \
    $${PWD}/OAIGetIngredientInformation_200_response_nutrition.cpp \
    $${PWD}/OAIGetIngredientSubstitutes_200_response.cpp \
    $${PWD}/OAIGetMealPlanTemplate_200_response.cpp \
    $${PWD}/OAIGetMealPlanTemplate_200_response_days_inner.cpp \
    $${PWD}/OAIGetMealPlanTemplate_200_response_days_inner_items_inner.cpp \
    $${PWD}/OAIGetMealPlanTemplate_200_response_days_inner_items_inner_value.cpp \
    $${PWD}/OAIGetMealPlanTemplates_200_response.cpp \
    $${PWD}/OAIGetMealPlanWeek_200_response.cpp \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner.cpp \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_items_inner.cpp \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_items_inner_value.cpp \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary.cpp \
    $${PWD}/OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner.cpp \
    $${PWD}/OAIGetMenuItemInformation_200_response.cpp \
    $${PWD}/OAIGetProductInformation_200_response.cpp \
    $${PWD}/OAIGetProductInformation_200_response_ingredients_inner.cpp \
    $${PWD}/OAIGetRandomFoodTrivia_200_response.cpp \
    $${PWD}/OAIGetRandomRecipes_200_response.cpp \
    $${PWD}/OAIGetRandomRecipes_200_response_recipes_inner.cpp \
    $${PWD}/OAIGetRecipeEquipmentByID_200_response.cpp \
    $${PWD}/OAIGetRecipeEquipmentByID_200_response_equipment_inner.cpp \
    $${PWD}/OAIGetRecipeInformationBulk_200_response_inner.cpp \
    $${PWD}/OAIGetRecipeInformation_200_response.cpp \
    $${PWD}/OAIGetRecipeInformation_200_response_extendedIngredients_inner.cpp \
    $${PWD}/OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures.cpp \
    $${PWD}/OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures_metric.cpp \
    $${PWD}/OAIGetRecipeInformation_200_response_winePairing.cpp \
    $${PWD}/OAIGetRecipeInformation_200_response_winePairing_productMatches_inner.cpp \
    $${PWD}/OAIGetRecipeIngredientsByID_200_response.cpp \
    $${PWD}/OAIGetRecipeIngredientsByID_200_response_ingredients_inner.cpp \
    $${PWD}/OAIGetRecipeNutritionWidgetByID_200_response.cpp \
    $${PWD}/OAIGetRecipeNutritionWidgetByID_200_response_bad_inner.cpp \
    $${PWD}/OAIGetRecipeNutritionWidgetByID_200_response_good_inner.cpp \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response.cpp \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner.cpp \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount.cpp \
    $${PWD}/OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric.cpp \
    $${PWD}/OAIGetRecipeTasteByID_200_response.cpp \
    $${PWD}/OAIGetShoppingList_200_response.cpp \
    $${PWD}/OAIGetShoppingList_200_response_aisles_inner.cpp \
    $${PWD}/OAIGetShoppingList_200_response_aisles_inner_items_inner.cpp \
    $${PWD}/OAIGetShoppingList_200_response_aisles_inner_items_inner_measures.cpp \
    $${PWD}/OAIGetSimilarRecipes_200_response_inner.cpp \
    $${PWD}/OAIGetWineDescription_200_response.cpp \
    $${PWD}/OAIGetWinePairing_200_response.cpp \
    $${PWD}/OAIGetWinePairing_200_response_productMatches_inner.cpp \
    $${PWD}/OAIGetWineRecommendation_200_response.cpp \
    $${PWD}/OAIGetWineRecommendation_200_response_recommendedWines_inner.cpp \
    $${PWD}/OAIGuessNutritionByDishName_200_response.cpp \
    $${PWD}/OAIGuessNutritionByDishName_200_response_calories.cpp \
    $${PWD}/OAIGuessNutritionByDishName_200_response_calories_confidenceRange95Percent.cpp \
    $${PWD}/OAIImageAnalysisByURL_200_response.cpp \
    $${PWD}/OAIImageAnalysisByURL_200_response_category.cpp \
    $${PWD}/OAIImageAnalysisByURL_200_response_nutrition.cpp \
    $${PWD}/OAIImageAnalysisByURL_200_response_nutrition_calories.cpp \
    $${PWD}/OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent.cpp \
    $${PWD}/OAIImageAnalysisByURL_200_response_recipes_inner.cpp \
    $${PWD}/OAIImageClassificationByURL_200_response.cpp \
    $${PWD}/OAIIngredientSearch_200_response.cpp \
    $${PWD}/OAIIngredientSearch_200_response_results_inner.cpp \
    $${PWD}/OAIMapIngredientsToGroceryProducts_200_response_inner.cpp \
    $${PWD}/OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner.cpp \
    $${PWD}/OAIMapIngredientsToGroceryProducts_request.cpp \
    $${PWD}/OAIParseIngredients_200_response_inner.cpp \
    $${PWD}/OAIParseIngredients_200_response_inner_estimatedCost.cpp \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition.cpp \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_caloricBreakdown.cpp \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_nutrients_inner.cpp \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_properties_inner.cpp \
    $${PWD}/OAIParseIngredients_200_response_inner_nutrition_weightPerServing.cpp \
    $${PWD}/OAIQuickAnswer_200_response.cpp \
    $${PWD}/OAISearchAllFood_200_response.cpp \
    $${PWD}/OAISearchAllFood_200_response_searchResults_inner.cpp \
    $${PWD}/OAISearchAllFood_200_response_searchResults_inner_results_inner.cpp \
    $${PWD}/OAISearchCustomFoods_200_response.cpp \
    $${PWD}/OAISearchCustomFoods_200_response_customFoods_inner.cpp \
    $${PWD}/OAISearchFoodVideos_200_response.cpp \
    $${PWD}/OAISearchFoodVideos_200_response_videos_inner.cpp \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response.cpp \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response_ingredients_inner.cpp \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response_nutrition.cpp \
    $${PWD}/OAISearchGroceryProductsByUPC_200_response_servings.cpp \
    $${PWD}/OAISearchGroceryProducts_200_response.cpp \
    $${PWD}/OAISearchMenuItems_200_response.cpp \
    $${PWD}/OAISearchMenuItems_200_response_menuItems_inner.cpp \
    $${PWD}/OAISearchRecipesByIngredients_200_response_inner.cpp \
    $${PWD}/OAISearchRecipesByIngredients_200_response_inner_missedIngredients_inner.cpp \
    $${PWD}/OAISearchRecipesByNutrients_200_response_inner.cpp \
    $${PWD}/OAISearchRecipes_200_response.cpp \
    $${PWD}/OAISearchRecipes_200_response_results_inner.cpp \
    $${PWD}/OAISearchRestaurants_200_response.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_address.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.cpp \
    $${PWD}/OAISearchSiteContent_200_response.cpp \
    $${PWD}/OAISearchSiteContent_200_response_Articles_inner.cpp \
    $${PWD}/OAISearchSiteContent_200_response_Grocery_Products_inner.cpp \
    $${PWD}/OAISearchSiteContent_200_response_Grocery_Products_inner_dataPoints_inner.cpp \
    $${PWD}/OAISummarizeRecipe_200_response.cpp \
    $${PWD}/OAITalkToChatbot_200_response.cpp \
# APIs
    $${PWD}/OAIDefaultApi.cpp \
    $${PWD}/OAIIngredientsApi.cpp \
    $${PWD}/OAIMealPlanningApi.cpp \
    $${PWD}/OAIMenuItemsApi.cpp \
    $${PWD}/OAIMiscApi.cpp \
    $${PWD}/OAIProductsApi.cpp \
    $${PWD}/OAIRecipesApi.cpp \
    $${PWD}/OAIWineApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp