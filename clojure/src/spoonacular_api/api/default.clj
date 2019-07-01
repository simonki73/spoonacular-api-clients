(ns spoonacular-api.api.default
  (:require [spoonacular-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [spoonacular-api.specs.inline-object-3 :refer :all]
            [spoonacular-api.specs.inline-object-2 :refer :all]
            [spoonacular-api.specs.inline-object-5 :refer :all]
            [spoonacular-api.specs.inline-object-4 :refer :all]
            [spoonacular-api.specs.inline-object-7 :refer :all]
            [spoonacular-api.specs.inline-object-6 :refer :all]
            [spoonacular-api.specs.inline-object-9 :refer :all]
            [spoonacular-api.specs.inline-object :refer :all]
            [spoonacular-api.specs.inline-object-8 :refer :all]
            [spoonacular-api.specs.inline-object-1 :refer :all]
            )
  (:import (java.io File)))


(defn-spec analyze-a-recipe-search-query-with-http-info any?
  "Analyze a Recipe Search Query
  Parse a recipe search query to find out its intention."
  [q string?]
  (check-required-params q)
  (call-api "/recipes/queries/analyze" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec analyze-a-recipe-search-query any?
  "Analyze a Recipe Search Query
  Parse a recipe search query to find out its intention."
  [q string?]
  (let [res (:data (analyze-a-recipe-search-query-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec analyze-recipe-instructions-with-http-info any?
  "Analyze Recipe Instructions
  Extract ingredients and equipment from the recipe instruction steps."
  [instructions string?]
  (check-required-params instructions)
  (call-api "/recipes/analyzeInstructions" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"instructions" instructions }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec analyze-recipe-instructions any?
  "Analyze Recipe Instructions
  Extract ingredients and equipment from the recipe instruction steps."
  [instructions string?]
  (let [res (:data (analyze-recipe-instructions-with-http-info instructions))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec autocomplete-ingredient-search-with-http-info any?
  "Autocomplete Ingredient Search
  Autocomplete a search for an ingredient."
  ([query string?, ] (autocomplete-ingredient-search-with-http-info query nil))
  ([query string?, {:keys [number metaInformation intolerances]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/ingredients/autocomplete" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number "metaInformation" metaInformation "intolerances" intolerances }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec autocomplete-ingredient-search any?
  "Autocomplete Ingredient Search
  Autocomplete a search for an ingredient."
  ([query string?, ] (autocomplete-ingredient-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-ingredient-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec autocomplete-menu-item-search-with-http-info any?
  "Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-menu-item-search-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/menuItems/suggest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec autocomplete-menu-item-search any?
  "Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-menu-item-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-menu-item-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec autocomplete-product-search-with-http-info any?
  "Autocomplete Product Search
  Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-product-search-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/products/suggest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec autocomplete-product-search any?
  "Autocomplete Product Search
  Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-product-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-product-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec autocomplete-recipe-search-with-http-info any?
  "Autocomplete Recipe Search
  Autocomplete a partial input to possible recipe names."
  ([query string?, ] (autocomplete-recipe-search-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/recipes/autocomplete" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec autocomplete-recipe-search any?
  "Autocomplete Recipe Search
  Autocomplete a partial input to possible recipe names."
  ([query string?, ] (autocomplete-recipe-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-recipe-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec classify-cuisine-with-http-info any?
  "Classify Cuisine
  Classify the recipe's cuisine."
  [title string?, ingredientList string?]
  (check-required-params title ingredientList)
  (call-api "/recipes/cuisine" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"title" title "ingredientList" ingredientList }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec classify-cuisine any?
  "Classify Cuisine
  Classify the recipe's cuisine."
  [title string?, ingredientList string?]
  (let [res (:data (classify-cuisine-with-http-info title ingredientList))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec classify-grocery-product-with-http-info any?
  "Classify Grocery Product
  Given a grocery product title, this endpoint allows you to detect what basic ingredient it is."
  ([inline-object-8 inline-object-8, ] (classify-grocery-product-with-http-info inline-object-8 nil))
  ([inline-object-8 inline-object-8, {:keys [locale]} (s/map-of keyword? any?)]
   (check-required-params inline-object-8)
   (call-api "/food/products/classify" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"locale" locale }
              :form-params   {}
              :body-param    inline-object-8
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec classify-grocery-product any?
  "Classify Grocery Product
  Given a grocery product title, this endpoint allows you to detect what basic ingredient it is."
  ([inline-object-8 inline-object-8, ] (classify-grocery-product inline-object-8 nil))
  ([inline-object-8 inline-object-8, optional-params any?]
   (let [res (:data (classify-grocery-product-with-http-info inline-object-8 optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec classify-grocery-product-bulk-with-http-info any?
  "Classify Grocery Product Bulk
  Given a set of product jsons, get back classified products."
  ([body any?, ] (classify-grocery-product-bulk-with-http-info body nil))
  ([body any?, {:keys [locale]} (s/map-of keyword? any?)]
   (check-required-params body)
   (call-api "/food/products/classifyBatch" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"locale" locale }
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec classify-grocery-product-bulk any?
  "Classify Grocery Product Bulk
  Given a set of product jsons, get back classified products."
  ([body any?, ] (classify-grocery-product-bulk body nil))
  ([body any?, optional-params any?]
   (let [res (:data (classify-grocery-product-bulk-with-http-info body optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec convert-amounts-with-http-info any?
  "Convert Amounts
  Convert amounts like \"2 cups of flour to grams\"."
  [ingredientName string?, sourceAmount float?, sourceUnit string?, targetUnit string?]
  (check-required-params ingredientName sourceAmount sourceUnit targetUnit)
  (call-api "/recipes/convert" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"ingredientName" ingredientName "sourceAmount" sourceAmount "sourceUnit" sourceUnit "targetUnit" targetUnit }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec convert-amounts any?
  "Convert Amounts
  Convert amounts like \"2 cups of flour to grams\"."
  [ingredientName string?, sourceAmount float?, sourceUnit string?, targetUnit string?]
  (let [res (:data (convert-amounts-with-http-info ingredientName sourceAmount sourceUnit targetUnit))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec create-recipe-card-with-http-info any?
  "Create Recipe Card
  Create Recipe Card."
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, ] (create-recipe-card-with-http-info title image ingredients instructions readyInMinutes servings mask backgroundImage nil))
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, {:keys [author backgroundColor fontColor source]} (s/map-of keyword? any?)]
   (check-required-params title image ingredients instructions readyInMinutes servings mask backgroundImage)
   (call-api "/recipes/visualizeRecipe" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"title" title "image" image "ingredients" ingredients "instructions" instructions "readyInMinutes" readyInMinutes "servings" servings "mask" mask "backgroundImage" backgroundImage "author" author "backgroundColor" backgroundColor "fontColor" fontColor "source" source }
              :content-types ["multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec create-recipe-card any?
  "Create Recipe Card
  Create Recipe Card."
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, ] (create-recipe-card title image ingredients instructions readyInMinutes servings mask backgroundImage nil))
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, optional-params any?]
   (let [res (:data (create-recipe-card-with-http-info title image ingredients instructions readyInMinutes servings mask backgroundImage optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec detect-food-in-text-with-http-info any?
  "Detect Food in Text
  Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds."
  [text string?]
  (check-required-params text)
  (call-api "/food/detect" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"text" text }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec detect-food-in-text any?
  "Detect Food in Text
  Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds."
  [text string?]
  (let [res (:data (detect-food-in-text-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec extract-recipe-from-website-with-http-info any?
  "Extract Recipe from Website
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used."
  ([url string?, ] (extract-recipe-from-website-with-http-info url nil))
  ([url string?, {:keys [forceExtraction]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/recipes/extract" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "forceExtraction" forceExtraction }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec extract-recipe-from-website any?
  "Extract Recipe from Website
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used."
  ([url string?, ] (extract-recipe-from-website url nil))
  ([url string?, optional-params any?]
   (let [res (:data (extract-recipe-from-website-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec generate-meal-plan-with-http-info any?
  "Generate Meal Plan
  Generate a meal plan with three meals per day (breakfast, lunch, and dinner)."
  ([] (generate-meal-plan-with-http-info nil))
  ([{:keys [timeFrame targetCalories diet exclude]} (s/map-of keyword? any?)]
   (call-api "/recipes/mealplans/generate" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"timeFrame" timeFrame "targetCalories" targetCalories "diet" diet "exclude" exclude }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec generate-meal-plan any?
  "Generate Meal Plan
  Generate a meal plan with three meals per day (breakfast, lunch, and dinner)."
  ([] (generate-meal-plan nil))
  ([optional-params any?]
   (let [res (:data (generate-meal-plan-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-a-random-food-joke-with-http-info any?
  "Get a Random Food Joke
  Get a random joke that includes or is about food."
  []
  (call-api "/food/jokes/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-a-random-food-joke any?
  "Get a Random Food Joke
  Get a random joke that includes or is about food."
  []
  (let [res (:data (get-a-random-food-joke-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-analyzed-recipe-instructions-with-http-info any?
  "Get Analyzed Recipe Instructions
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used."
  ([id float?, ] (get-analyzed-recipe-instructions-with-http-info id nil))
  ([id float?, {:keys [stepBreakdown]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/analyzedInstructions" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"stepBreakdown" stepBreakdown }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-analyzed-recipe-instructions any?
  "Get Analyzed Recipe Instructions
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used."
  ([id float?, ] (get-analyzed-recipe-instructions id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-analyzed-recipe-instructions-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-comparable-products-with-http-info any?
  "Get Comparable Products
  Find comparable products to the given one."
  [upc float?]
  (check-required-params upc)
  (call-api "/food/products/upc/{upc}/comparable" :get
            {:path-params   {"upc" upc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-comparable-products any?
  "Get Comparable Products
  Find comparable products to the given one."
  [upc float?]
  (let [res (:data (get-comparable-products-with-http-info upc))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-conversation-suggests-with-http-info any?
  "Get Conversation Suggests
  This endpoint returns suggestions for things the user can say or ask the chat bot."
  ([query string?, ] (get-conversation-suggests-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/converse/suggest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-conversation-suggests any?
  "Get Conversation Suggests
  This endpoint returns suggestions for things the user can say or ask the chat bot."
  ([query string?, ] (get-conversation-suggests query nil))
  ([query string?, optional-params any?]
   (let [res (:data (get-conversation-suggests-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-dish-pairing-for-wine-with-http-info any?
  "Get Dish Pairing for Wine
  Get a dish that goes well with a given wine."
  [wine string?]
  (check-required-params wine)
  (call-api "/food/wine/dishes" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"wine" wine }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-dish-pairing-for-wine any?
  "Get Dish Pairing for Wine
  Get a dish that goes well with a given wine."
  [wine string?]
  (let [res (:data (get-dish-pairing-for-wine-with-http-info wine))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-food-information-with-http-info any?
  "Get Food Information
  Get information about a certain food (ingredient)."
  ([id float?, ] (get-food-information-with-http-info id nil))
  ([id float?, {:keys [amount unit]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/ingredients/{id}/information" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"amount" amount "unit" unit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-food-information any?
  "Get Food Information
  Get information about a certain food (ingredient)."
  ([id float?, ] (get-food-information id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-food-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-ingredient-substitutes-with-http-info any?
  "Get Ingredient Substitutes
  Search for substitutes for a given ingredient."
  [ingredientName string?]
  (check-required-params ingredientName)
  (call-api "/food/ingredients/substitutes" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"ingredientName" ingredientName }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-ingredient-substitutes any?
  "Get Ingredient Substitutes
  Search for substitutes for a given ingredient."
  [ingredientName string?]
  (let [res (:data (get-ingredient-substitutes-with-http-info ingredientName))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-ingredient-substitutes-by-id-with-http-info any?
  "Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient."
  [id float?]
  (check-required-params id)
  (call-api "/food/ingredients/{id}/substitutes" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-ingredient-substitutes-by-id any?
  "Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient."
  [id float?]
  (let [res (:data (get-ingredient-substitutes-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-menu-item-information-with-http-info any?
  "Get Menu Item Information
  Get information about a certain menu item."
  [id float?]
  (check-required-params id)
  (call-api "/food/menuItems/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-menu-item-information any?
  "Get Menu Item Information
  Get information about a certain menu item."
  [id float?]
  (let [res (:data (get-menu-item-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-product-information-with-http-info any?
  "Get Product Information
  Get information about a packaged food product."
  [id float?]
  (check-required-params id)
  (call-api "/food/products/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-product-information any?
  "Get Product Information
  Get information about a packaged food product."
  [id float?]
  (let [res (:data (get-product-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-random-food-trivia-with-http-info any?
  "Get Random Food Trivia
  Returns random food trivia."
  []
  (call-api "/food/trivia/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-random-food-trivia any?
  "Get Random Food Trivia
  Returns random food trivia."
  []
  (let [res (:data (get-random-food-trivia-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-random-recipes-with-http-info any?
  "Get Random Recipes
  Find random (popular) recipes."
  ([] (get-random-recipes-with-http-info nil))
  ([{:keys [limitLicense tags number]} (s/map-of keyword? any?)]
   (call-api "/recipes/random" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"limitLicense" limitLicense "tags" tags "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-random-recipes any?
  "Get Random Recipes
  Find random (popular) recipes."
  ([] (get-random-recipes nil))
  ([optional-params any?]
   (let [res (:data (get-random-recipes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-recipe-equipment-by-id-with-http-info any?
  "Get Recipe Equipment by ID
  Get a recipe's equipment list."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/equipmentWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-equipment-by-id any?
  "Get Recipe Equipment by ID
  Get a recipe's equipment list."
  [id float?]
  (let [res (:data (get-recipe-equipment-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-recipe-information-with-http-info any?
  "Get Recipe Information
  Get information about a recipe."
  ([id float?, ] (get-recipe-information-with-http-info id nil))
  ([id float?, {:keys [includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/information" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"includeNutrition" includeNutrition }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-recipe-information any?
  "Get Recipe Information
  Get information about a recipe."
  ([id float?, ] (get-recipe-information id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-recipe-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-recipe-information-bulk-with-http-info any?
  "Get Recipe Information Bulk
  Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster."
  ([ids string?, ] (get-recipe-information-bulk-with-http-info ids nil))
  ([ids string?, {:keys [includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params ids)
   (call-api "/recipes/informationBulk" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"ids" ids "includeNutrition" includeNutrition }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-recipe-information-bulk any?
  "Get Recipe Information Bulk
  Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster."
  ([ids string?, ] (get-recipe-information-bulk ids nil))
  ([ids string?, optional-params any?]
   (let [res (:data (get-recipe-information-bulk-with-http-info ids optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-recipe-ingredients-by-id-with-http-info any?
  "Get Recipe Ingredients by ID
  Get a recipe's ingredient list."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/ingredientWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-ingredients-by-id any?
  "Get Recipe Ingredients by ID
  Get a recipe's ingredient list."
  [id float?]
  (let [res (:data (get-recipe-ingredients-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-recipe-nutrition-by-id-with-http-info any?
  "Get Recipe Nutrition by ID
  Get a recipe's nutrition widget data."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/nutritionWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-nutrition-by-id any?
  "Get Recipe Nutrition by ID
  Get a recipe's nutrition widget data."
  [id float?]
  (let [res (:data (get-recipe-nutrition-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-recipe-price-breakdown-by-id-with-http-info any?
  "Get Recipe Price Breakdown by ID
  Get a recipe's price breakdown data."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/priceBreakdownWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-price-breakdown-by-id any?
  "Get Recipe Price Breakdown by ID
  Get a recipe's price breakdown data."
  [id float?]
  (let [res (:data (get-recipe-price-breakdown-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-similar-recipes-with-http-info any?
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id float?, ] (get-similar-recipes-with-http-info id nil))
  ([id float?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/similar" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-similar-recipes any?
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id float?, ] (get-similar-recipes id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-similar-recipes-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-wine-description-with-http-info any?
  "Get Wine Description
  Get the description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\"."
  [wine string?]
  (check-required-params wine)
  (call-api "/food/wine/description" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"wine" wine }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-wine-description any?
  "Get Wine Description
  Get the description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\"."
  [wine string?]
  (let [res (:data (get-wine-description-with-http-info wine))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-wine-pairing-with-http-info any?
  "Get Wine Pairing
  Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\")."
  ([food string?, ] (get-wine-pairing-with-http-info food nil))
  ([food string?, {:keys [maxPrice]} (s/map-of keyword? any?)]
   (check-required-params food)
   (call-api "/food/wine/pairing" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"food" food "maxPrice" maxPrice }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-wine-pairing any?
  "Get Wine Pairing
  Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\")."
  ([food string?, ] (get-wine-pairing food nil))
  ([food string?, optional-params any?]
   (let [res (:data (get-wine-pairing-with-http-info food optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-wine-recommendation-with-http-info any?
  "Get Wine Recommendation
  Get a specific wine recommendation (concrete product) for a given wine, e.g. \"merlot\"."
  ([wine string?, ] (get-wine-recommendation-with-http-info wine nil))
  ([wine string?, {:keys [maxPrice minRating number]} (s/map-of keyword? any?)]
   (check-required-params wine)
   (call-api "/food/wine/recommendation" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"wine" wine "maxPrice" maxPrice "minRating" minRating "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-wine-recommendation any?
  "Get Wine Recommendation
  Get a specific wine recommendation (concrete product) for a given wine, e.g. \"merlot\"."
  ([wine string?, ] (get-wine-recommendation wine nil))
  ([wine string?, optional-params any?]
   (let [res (:data (get-wine-recommendation-with-http-info wine optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec guess-nutrition-by-dish-name-with-http-info any?
  "Guess Nutrition by Dish Name
  Guess the macro nutrients of a dish given its title."
  [title string?]
  (check-required-params title)
  (call-api "/recipes/guessNutrition" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"title" title }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec guess-nutrition-by-dish-name any?
  "Guess Nutrition by Dish Name
  Guess the macro nutrients of a dish given its title."
  [title string?]
  (let [res (:data (guess-nutrition-by-dish-name-with-http-info title))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec map-ingredients-to-grocery-products-with-http-info any?
  "Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store."
  [body any?]
  (check-required-params body)
  (call-api "/food/ingredients/map" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    body
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec map-ingredients-to-grocery-products any?
  "Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store."
  [body any?]
  (let [res (:data (map-ingredients-to-grocery-products-with-http-info body))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec parse-ingredients-with-http-info any?
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([ingredientList string?, servings float?, ] (parse-ingredients-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/parseIngredients" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "includeNutrition" includeNutrition }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec parse-ingredients any?
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([ingredientList string?, servings float?, ] (parse-ingredients ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (parse-ingredients-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec quick-answer-with-http-info any?
  "Quick Answer
  Answer a nutrition related natural language question."
  [q string?]
  (check-required-params q)
  (call-api "/recipes/quickAnswer" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec quick-answer any?
  "Quick Answer
  Answer a nutrition related natural language question."
  [q string?]
  (let [res (:data (quick-answer-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec search-food-videos-with-http-info any?
  "Search Food Videos
  Find recipe and other food related videos."
  ([query string?, ] (search-food-videos-with-http-info query nil))
  ([query string?, {:keys [type cuisine diet includeIngredients excludeIngredients minLength maxLength offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/videos/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "type" type "cuisine" cuisine "diet" diet "includeIngredients" includeIngredients "excludeIngredients" excludeIngredients "minLength" minLength "maxLength" maxLength "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-food-videos any?
  "Search Food Videos
  Find recipe and other food related videos."
  ([query string?, ] (search-food-videos query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-food-videos-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-grocery-products-with-http-info any?
  "Search Grocery Products
  Search packaged food products such as frozen pizza and snickers bars."
  ([query string?, ] (search-grocery-products-with-http-info query nil))
  ([query string?, {:keys [minCalories maxCalories minCarbs maxCarbs minProtein maxProtein minFat maxFat offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/products/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "minCalories" minCalories "maxCalories" maxCalories "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minFat" minFat "maxFat" maxFat "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-grocery-products any?
  "Search Grocery Products
  Search packaged food products such as frozen pizza and snickers bars."
  ([query string?, ] (search-grocery-products query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-grocery-products-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-grocery-products-by-upc-with-http-info any?
  "Search Grocery Products by UPC
  Get information about a food product given its UPC."
  [upc float?]
  (check-required-params upc)
  (call-api "/food/products/upc/{upc}" :get
            {:path-params   {"upc" upc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec search-grocery-products-by-upc any?
  "Search Grocery Products by UPC
  Get information about a food product given its UPC."
  [upc float?]
  (let [res (:data (search-grocery-products-by-upc-with-http-info upc))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec search-menu-items-with-http-info any?
  "Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha."
  ([query string?, ] (search-menu-items-with-http-info query nil))
  ([query string?, {:keys [minCalories maxCalories minCarbs maxCarbs minProtein maxProtein minFat maxFat offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/menuItems/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "minCalories" minCalories "maxCalories" maxCalories "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minFat" minFat "maxFat" maxFat "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-menu-items any?
  "Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha."
  ([query string?, ] (search-menu-items query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-menu-items-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-with-http-info any?
  "Search Recipes
  Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility."
  ([query string?, ] (search-recipes-with-http-info query nil))
  ([query string?, {:keys [cuisine diet excludeIngredients intolerances offset number limitLicense instructionsRequired]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/recipes/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "cuisine" cuisine "diet" diet "excludeIngredients" excludeIngredients "intolerances" intolerances "offset" offset "number" number "limitLicense" limitLicense "instructionsRequired" instructionsRequired }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-recipes any?
  "Search Recipes
  Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility."
  ([query string?, ] (search-recipes query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-recipes-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-by-ingredients-with-http-info any?
  "Search Recipes by Ingredients
  Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \"what's in your fridge\" API endpoint."
  ([ingredients string?, ] (search-recipes-by-ingredients-with-http-info ingredients nil))
  ([ingredients string?, {:keys [number limitLicense ranking ignorePantry]} (s/map-of keyword? any?)]
   (check-required-params ingredients)
   (call-api "/recipes/findByIngredients" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"ingredients" ingredients "number" number "limitLicense" limitLicense "ranking" ranking "ignorePantry" ignorePantry }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-recipes-by-ingredients any?
  "Search Recipes by Ingredients
  Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \"what's in your fridge\" API endpoint."
  ([ingredients string?, ] (search-recipes-by-ingredients ingredients nil))
  ([ingredients string?, optional-params any?]
   (let [res (:data (search-recipes-by-ingredients-with-http-info ingredients optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-by-nutrients-with-http-info any?
  "Search Recipes by Nutrients
  Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits."
  ([] (search-recipes-by-nutrients-with-http-info nil))
  ([{:keys [minCarbs maxCarbs minProtein maxProtein minCalories maxCalories minFat maxFat minAlcohol maxAlcohol minCaffeine maxCaffeine minCopper maxCopper minCalcium maxCalcium minCholine maxCholine minCholesterol maxCholesterol minFluoride maxFluoride minSaturatedFat maxSaturatedFat minVitaminA maxVitaminA minVitaminC maxVitaminC minVitaminD maxVitaminD minVitaminE maxVitaminE minVitaminK maxVitaminK minVitaminB1 maxVitaminB1 minVitaminB2 maxVitaminB2 minVitaminB5 maxVitaminB5 minVitaminB3 maxVitaminB3 minVitaminB6 maxVitaminB6 minVitaminB12 maxVitaminB12 minFiber maxFiber minFolate maxFolate minFolicAcid maxFolicAcid minIodine maxIodine minIron maxIron minMagnesium maxMagnesium minManganese maxManganese minPhosphorus maxPhosphorus minPotassium maxPotassium minSelenium maxSelenium minSodium maxSodium minSugar maxSugar minZinc maxZinc offset number random limitLicense]} (s/map-of keyword? any?)]
   (call-api "/recipes/findByNutrients" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minCalories" minCalories "maxCalories" maxCalories "minFat" minFat "maxFat" maxFat "minAlcohol" minAlcohol "maxAlcohol" maxAlcohol "minCaffeine" minCaffeine "maxCaffeine" maxCaffeine "minCopper" minCopper "maxCopper" maxCopper "minCalcium" minCalcium "maxCalcium" maxCalcium "minCholine" minCholine "maxCholine" maxCholine "minCholesterol" minCholesterol "maxCholesterol" maxCholesterol "minFluoride" minFluoride "maxFluoride" maxFluoride "minSaturatedFat" minSaturatedFat "maxSaturatedFat" maxSaturatedFat "minVitaminA" minVitaminA "maxVitaminA" maxVitaminA "minVitaminC" minVitaminC "maxVitaminC" maxVitaminC "minVitaminD" minVitaminD "maxVitaminD" maxVitaminD "minVitaminE" minVitaminE "maxVitaminE" maxVitaminE "minVitaminK" minVitaminK "maxVitaminK" maxVitaminK "minVitaminB1" minVitaminB1 "maxVitaminB1" maxVitaminB1 "minVitaminB2" minVitaminB2 "maxVitaminB2" maxVitaminB2 "minVitaminB5" minVitaminB5 "maxVitaminB5" maxVitaminB5 "minVitaminB3" minVitaminB3 "maxVitaminB3" maxVitaminB3 "minVitaminB6" minVitaminB6 "maxVitaminB6" maxVitaminB6 "minVitaminB12" minVitaminB12 "maxVitaminB12" maxVitaminB12 "minFiber" minFiber "maxFiber" maxFiber "minFolate" minFolate "maxFolate" maxFolate "minFolicAcid" minFolicAcid "maxFolicAcid" maxFolicAcid "minIodine" minIodine "maxIodine" maxIodine "minIron" minIron "maxIron" maxIron "minMagnesium" minMagnesium "maxMagnesium" maxMagnesium "minManganese" minManganese "maxManganese" maxManganese "minPhosphorus" minPhosphorus "maxPhosphorus" maxPhosphorus "minPotassium" minPotassium "maxPotassium" maxPotassium "minSelenium" minSelenium "maxSelenium" maxSelenium "minSodium" minSodium "maxSodium" maxSodium "minSugar" minSugar "maxSugar" maxSugar "minZinc" minZinc "maxZinc" maxZinc "offset" offset "number" number "random" random "limitLicense" limitLicense }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-recipes-by-nutrients any?
  "Search Recipes by Nutrients
  Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits."
  ([] (search-recipes-by-nutrients nil))
  ([optional-params any?]
   (let [res (:data (search-recipes-by-nutrients-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-complex-with-http-info any?
  "Search Recipes Complex
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint."
  ([query string?, ] (search-recipes-complex-with-http-info query nil))
  ([query string?, {:keys [cuisine excludeCuisine diet intolerances equipment includeIngredients excludeIngredients type instructionsRequired fillIngredients addRecipeInformation author tags titleMatch sort sortDirection minCarbs maxCarbs minProtein maxProtein minCalories maxCalories minFat maxFat minAlcohol maxAlcohol minCaffeine maxCaffeine minCopper maxCopper minCalcium maxCalcium minCholine maxCholine minCholesterol maxCholesterol minFluoride maxFluoride minSaturatedFat maxSaturatedFat minVitaminA maxVitaminA minVitaminC maxVitaminC minVitaminD maxVitaminD minVitaminE maxVitaminE minVitaminK maxVitaminK minVitaminB1 maxVitaminB1 minVitaminB2 maxVitaminB2 minVitaminB5 maxVitaminB5 minVitaminB3 maxVitaminB3 minVitaminB6 maxVitaminB6 minVitaminB12 maxVitaminB12 minFiber maxFiber minFolate maxFolate minFolicAcid maxFolicAcid minIodine maxIodine minIron maxIron minMagnesium maxMagnesium minManganese maxManganese minPhosphorus maxPhosphorus minPotassium maxPotassium minSelenium maxSelenium minSodium maxSodium minSugar maxSugar minZinc maxZinc offset number limitLicense]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/recipes/complexSearch" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "cuisine" cuisine "excludeCuisine" excludeCuisine "diet" diet "intolerances" intolerances "equipment" equipment "includeIngredients" includeIngredients "excludeIngredients" excludeIngredients "type" type "instructionsRequired" instructionsRequired "fillIngredients" fillIngredients "addRecipeInformation" addRecipeInformation "author" author "tags" tags "titleMatch" titleMatch "sort" sort "sortDirection" sortDirection "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minCalories" minCalories "maxCalories" maxCalories "minFat" minFat "maxFat" maxFat "minAlcohol" minAlcohol "maxAlcohol" maxAlcohol "minCaffeine" minCaffeine "maxCaffeine" maxCaffeine "minCopper" minCopper "maxCopper" maxCopper "minCalcium" minCalcium "maxCalcium" maxCalcium "minCholine" minCholine "maxCholine" maxCholine "minCholesterol" minCholesterol "maxCholesterol" maxCholesterol "minFluoride" minFluoride "maxFluoride" maxFluoride "minSaturatedFat" minSaturatedFat "maxSaturatedFat" maxSaturatedFat "minVitaminA" minVitaminA "maxVitaminA" maxVitaminA "minVitaminC" minVitaminC "maxVitaminC" maxVitaminC "minVitaminD" minVitaminD "maxVitaminD" maxVitaminD "minVitaminE" minVitaminE "maxVitaminE" maxVitaminE "minVitaminK" minVitaminK "maxVitaminK" maxVitaminK "minVitaminB1" minVitaminB1 "maxVitaminB1" maxVitaminB1 "minVitaminB2" minVitaminB2 "maxVitaminB2" maxVitaminB2 "minVitaminB5" minVitaminB5 "maxVitaminB5" maxVitaminB5 "minVitaminB3" minVitaminB3 "maxVitaminB3" maxVitaminB3 "minVitaminB6" minVitaminB6 "maxVitaminB6" maxVitaminB6 "minVitaminB12" minVitaminB12 "maxVitaminB12" maxVitaminB12 "minFiber" minFiber "maxFiber" maxFiber "minFolate" minFolate "maxFolate" maxFolate "minFolicAcid" minFolicAcid "maxFolicAcid" maxFolicAcid "minIodine" minIodine "maxIodine" maxIodine "minIron" minIron "maxIron" maxIron "minMagnesium" minMagnesium "maxMagnesium" maxMagnesium "minManganese" minManganese "maxManganese" maxManganese "minPhosphorus" minPhosphorus "maxPhosphorus" maxPhosphorus "minPotassium" minPotassium "maxPotassium" maxPotassium "minSelenium" minSelenium "maxSelenium" maxSelenium "minSodium" minSodium "maxSodium" maxSodium "minSugar" minSugar "maxSugar" maxSugar "minZinc" minZinc "maxZinc" maxZinc "offset" offset "number" number "limitLicense" limitLicense }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-recipes-complex any?
  "Search Recipes Complex
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint."
  ([query string?, ] (search-recipes-complex query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-recipes-complex-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-site-content-with-http-info any?
  "Search Site Content
  Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries."
  [query string?]
  (check-required-params query)
  (call-api "/food/site/search" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"query" query }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec search-site-content any?
  "Search Site Content
  Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries."
  [query string?]
  (let [res (:data (search-site-content-with-http-info query))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec summarize-recipe-with-http-info any?
  "Summarize Recipe
  Summarize the recipe in a short text."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/summary" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec summarize-recipe any?
  "Summarize Recipe
  Summarize the recipe in a short text."
  [id float?]
  (let [res (:data (summarize-recipe-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec talk-to-chatbot-with-http-info any?
  "Talk to Chatbot
  This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say."
  ([text string?, ] (talk-to-chatbot-with-http-info text nil))
  ([text string?, {:keys [contextId]} (s/map-of keyword? any?)]
   (check-required-params text)
   (call-api "/food/converse" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"text" text "contextId" contextId }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec talk-to-chatbot any?
  "Talk to Chatbot
  This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say."
  ([text string?, ] (talk-to-chatbot text nil))
  ([text string?, optional-params any?]
   (let [res (:data (talk-to-chatbot-with-http-info text optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec visualize-equipment-with-http-info any?
  "Visualize Equipment
  Visualize the equipment used to make a recipe."
  ([ingredientList string?, servings float?, ] (visualize-equipment-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [view defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizeEquipment" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "view" view "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-equipment string?
  "Visualize Equipment
  Visualize the equipment used to make a recipe."
  ([ingredientList string?, servings float?, ] (visualize-equipment ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-equipment-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-ingredients-with-http-info any?
  "Visualize Ingredients
  Visualize ingredients of a recipe."
  ([ingredientList string?, servings float?, ] (visualize-ingredients-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [measure view defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizeIngredients" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "measure" measure "view" view "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-ingredients string?
  "Visualize Ingredients
  Visualize ingredients of a recipe."
  ([ingredientList string?, servings float?, ] (visualize-ingredients ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-ingredients-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-menu-item-nutrition-by-id-with-http-info any?
  "Visualize Menu Item Nutrition by ID
  Visualize a menu items' nutrition data."
  ([id float?, ] (visualize-menu-item-nutrition-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/menuItems/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-menu-item-nutrition-by-id string?
  "Visualize Menu Item Nutrition by ID
  Visualize a menu items' nutrition data."
  ([id float?, ] (visualize-menu-item-nutrition-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-menu-item-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-price-breakdown-with-http-info any?
  "Visualize Price Breakdown
  Visualize the price breakdown of a recipe."
  ([ingredientList string?, servings float?, ] (visualize-price-breakdown-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [mode defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizePriceEstimator" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "mode" mode "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-price-breakdown string?
  "Visualize Price Breakdown
  Visualize the price breakdown of a recipe."
  ([ingredientList string?, servings float?, ] (visualize-price-breakdown ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-price-breakdown-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-product-nutrition-by-id-with-http-info any?
  "Visualize Product Nutrition by ID
  Visualize a grocery product's nutritional information."
  ([id float?, ] (visualize-product-nutrition-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/products/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-product-nutrition-by-id string?
  "Visualize Product Nutrition by ID
  Visualize a grocery product's nutritional information."
  ([id float?, ] (visualize-product-nutrition-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-product-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-equipment-by-id-with-http-info any?
  "Visualize Recipe Equipment by ID
  Visualize a recipe's equipment list."
  ([id float?, ] (visualize-recipe-equipment-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/equipmentWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-equipment-by-id string?
  "Visualize Recipe Equipment by ID
  Visualize a recipe's equipment list."
  ([id float?, ] (visualize-recipe-equipment-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-equipment-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-ingredients-by-id-with-http-info any?
  "Visualize Recipe Ingredients by ID
  Visualize a recipe's ingredient list."
  ([id float?, ] (visualize-recipe-ingredients-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/ingredientWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-ingredients-by-id string?
  "Visualize Recipe Ingredients by ID
  Visualize a recipe's ingredient list."
  ([id float?, ] (visualize-recipe-ingredients-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-ingredients-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-nutrition-with-http-info any?
  "Visualize Recipe Nutrition
  Visualize a recipe's nutrition data."
  ([ingredientList string?, servings float?, ] (visualize-recipe-nutrition-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizeNutrition" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-nutrition string?
  "Visualize Recipe Nutrition
  Visualize a recipe's nutrition data."
  ([ingredientList string?, servings float?, ] (visualize-recipe-nutrition ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-recipe-nutrition-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-nutrition-by-id-with-http-info any?
  "Visualize Recipe Nutrition by ID
  Visualize a recipe's nutritional information."
  ([id float?, ] (visualize-recipe-nutrition-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-nutrition-by-id string?
  "Visualize Recipe Nutrition by ID
  Visualize a recipe's nutritional information."
  ([id float?, ] (visualize-recipe-nutrition-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-price-breakdown-by-id-with-http-info any?
  "Visualize Recipe Price Breakdown by ID
  Visualize a recipe's price breakdown."
  ([id float?, ] (visualize-recipe-price-breakdown-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/priceBreakdownWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-price-breakdown-by-id string?
  "Visualize Recipe Price Breakdown by ID
  Visualize a recipe's price breakdown."
  ([id float?, ] (visualize-recipe-price-breakdown-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-price-breakdown-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


