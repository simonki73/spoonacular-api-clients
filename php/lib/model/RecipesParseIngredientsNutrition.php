<?php
/**
 * RecipesParseIngredientsNutrition
 *
 * PHP version 5
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.0.0-SNAPSHOT
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace com.spoonacular.client\com.spoonacular.client.model;

use \ArrayAccess;
use \com.spoonacular.client\ObjectSerializer;

/**
 * RecipesParseIngredientsNutrition Class Doc Comment
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class RecipesParseIngredientsNutrition implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = '_recipes_parseIngredients_nutrition';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'nutrients' => '\com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionNutrients[]',
        'properties' => '\com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionProperties[]',
        'flavonoids' => '\com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionProperties[]',
        'caloric_breakdown' => '\com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionCaloricBreakdown',
        'weight_per_serving' => '\com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionWeightPerServing'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPIFormats = [
        'nutrients' => null,
        'properties' => null,
        'flavonoids' => null,
        'caloric_breakdown' => null,
        'weight_per_serving' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'nutrients' => 'nutrients',
        'properties' => 'properties',
        'flavonoids' => 'flavonoids',
        'caloric_breakdown' => 'caloricBreakdown',
        'weight_per_serving' => 'weightPerServing'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'nutrients' => 'setNutrients',
        'properties' => 'setProperties',
        'flavonoids' => 'setFlavonoids',
        'caloric_breakdown' => 'setCaloricBreakdown',
        'weight_per_serving' => 'setWeightPerServing'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'nutrients' => 'getNutrients',
        'properties' => 'getProperties',
        'flavonoids' => 'getFlavonoids',
        'caloric_breakdown' => 'getCaloricBreakdown',
        'weight_per_serving' => 'getWeightPerServing'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['nutrients'] = isset($data['nutrients']) ? $data['nutrients'] : null;
        $this->container['properties'] = isset($data['properties']) ? $data['properties'] : null;
        $this->container['flavonoids'] = isset($data['flavonoids']) ? $data['flavonoids'] : null;
        $this->container['caloric_breakdown'] = isset($data['caloric_breakdown']) ? $data['caloric_breakdown'] : null;
        $this->container['weight_per_serving'] = isset($data['weight_per_serving']) ? $data['weight_per_serving'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['nutrients'] === null) {
            $invalidProperties[] = "'nutrients' can't be null";
        }
        if ($this->container['properties'] === null) {
            $invalidProperties[] = "'properties' can't be null";
        }
        if ($this->container['flavonoids'] === null) {
            $invalidProperties[] = "'flavonoids' can't be null";
        }
        if ($this->container['caloric_breakdown'] === null) {
            $invalidProperties[] = "'caloric_breakdown' can't be null";
        }
        if ($this->container['weight_per_serving'] === null) {
            $invalidProperties[] = "'weight_per_serving' can't be null";
        }
        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets nutrients
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionNutrients[]
     */
    public function getNutrients()
    {
        return $this->container['nutrients'];
    }

    /**
     * Sets nutrients
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionNutrients[] $nutrients nutrients
     *
     * @return $this
     */
    public function setNutrients($nutrients)
    {
        $this->container['nutrients'] = $nutrients;

        return $this;
    }

    /**
     * Gets properties
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionProperties[]
     */
    public function getProperties()
    {
        return $this->container['properties'];
    }

    /**
     * Sets properties
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionProperties[] $properties properties
     *
     * @return $this
     */
    public function setProperties($properties)
    {
        $this->container['properties'] = $properties;

        return $this;
    }

    /**
     * Gets flavonoids
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionProperties[]
     */
    public function getFlavonoids()
    {
        return $this->container['flavonoids'];
    }

    /**
     * Sets flavonoids
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionProperties[] $flavonoids flavonoids
     *
     * @return $this
     */
    public function setFlavonoids($flavonoids)
    {
        $this->container['flavonoids'] = $flavonoids;

        return $this;
    }

    /**
     * Gets caloric_breakdown
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionCaloricBreakdown
     */
    public function getCaloricBreakdown()
    {
        return $this->container['caloric_breakdown'];
    }

    /**
     * Sets caloric_breakdown
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionCaloricBreakdown $caloric_breakdown caloric_breakdown
     *
     * @return $this
     */
    public function setCaloricBreakdown($caloric_breakdown)
    {
        $this->container['caloric_breakdown'] = $caloric_breakdown;

        return $this;
    }

    /**
     * Gets weight_per_serving
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionWeightPerServing
     */
    public function getWeightPerServing()
    {
        return $this->container['weight_per_serving'];
    }

    /**
     * Sets weight_per_serving
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\RecipesParseIngredientsNutritionWeightPerServing $weight_per_serving weight_per_serving
     *
     * @return $this
     */
    public function setWeightPerServing($weight_per_serving)
    {
        $this->container['weight_per_serving'] = $weight_per_serving;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }
}


