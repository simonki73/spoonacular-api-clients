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
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using spoonacular.Client;
using spoonacular.Api;
// uncomment below to import models
//using spoonacular.Model;

namespace spoonacular.Test.Api
{
    /// <summary>
    ///  Class for testing IngredientsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class IngredientsApiTests : IDisposable
    {
        private IngredientsApi instance;

        public IngredientsApiTests()
        {
            instance = new IngredientsApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of IngredientsApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' IngredientsApi
            //Assert.IsType<IngredientsApi>(instance);
        }

        /// <summary>
        /// Test AutocompleteIngredientSearch
        /// </summary>
        [Fact]
        public void AutocompleteIngredientSearchTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? query = null;
            //int? number = null;
            //bool? metaInformation = null;
            //string? intolerances = null;
            //string? language = null;
            //var response = instance.AutocompleteIngredientSearch(query, number, metaInformation, intolerances, language);
            //Assert.IsType<List<AutocompleteIngredientSearch200ResponseInner>>(response);
        }

        /// <summary>
        /// Test ComputeIngredientAmount
        /// </summary>
        [Fact]
        public void ComputeIngredientAmountTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //string nutrient = null;
            //decimal target = null;
            //string? unit = null;
            //var response = instance.ComputeIngredientAmount(id, nutrient, target, unit);
            //Assert.IsType<ComputeIngredientAmount200Response>(response);
        }

        /// <summary>
        /// Test GetIngredientInformation
        /// </summary>
        [Fact]
        public void GetIngredientInformationTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //decimal? amount = null;
            //string? unit = null;
            //var response = instance.GetIngredientInformation(id, amount, unit);
            //Assert.IsType<GetIngredientInformation200Response>(response);
        }

        /// <summary>
        /// Test GetIngredientSubstitutes
        /// </summary>
        [Fact]
        public void GetIngredientSubstitutesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ingredientName = null;
            //var response = instance.GetIngredientSubstitutes(ingredientName);
            //Assert.IsType<GetIngredientSubstitutes200Response>(response);
        }

        /// <summary>
        /// Test GetIngredientSubstitutesByID
        /// </summary>
        [Fact]
        public void GetIngredientSubstitutesByIDTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //var response = instance.GetIngredientSubstitutesByID(id);
            //Assert.IsType<GetIngredientSubstitutes200Response>(response);
        }

        /// <summary>
        /// Test IngredientSearch
        /// </summary>
        [Fact]
        public void IngredientSearchTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? query = null;
            //bool? addChildren = null;
            //decimal? minProteinPercent = null;
            //decimal? maxProteinPercent = null;
            //decimal? minFatPercent = null;
            //decimal? maxFatPercent = null;
            //decimal? minCarbsPercent = null;
            //decimal? maxCarbsPercent = null;
            //bool? metaInformation = null;
            //string? intolerances = null;
            //string? sort = null;
            //string? sortDirection = null;
            //int? offset = null;
            //int? number = null;
            //string? language = null;
            //var response = instance.IngredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language);
            //Assert.IsType<IngredientSearch200Response>(response);
        }

        /// <summary>
        /// Test IngredientsByIDImage
        /// </summary>
        [Fact]
        public void IngredientsByIDImageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //decimal id = null;
            //string? measure = null;
            //var response = instance.IngredientsByIDImage(id, measure);
            //Assert.IsType<Object>(response);
        }

        /// <summary>
        /// Test MapIngredientsToGroceryProducts
        /// </summary>
        [Fact]
        public void MapIngredientsToGroceryProductsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //MapIngredientsToGroceryProductsRequest mapIngredientsToGroceryProductsRequest = null;
            //var response = instance.MapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest);
            //Assert.IsType<List<MapIngredientsToGroceryProducts200ResponseInner>>(response);
        }

        /// <summary>
        /// Test VisualizeIngredients
        /// </summary>
        [Fact]
        public void VisualizeIngredientsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? contentType = null;
            //string? language = null;
            //string? accept = null;
            //var response = instance.VisualizeIngredients(contentType, language, accept);
            //Assert.IsType<string>(response);
        }
    }
}