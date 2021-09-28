<?php
/**
 * InlineResponse20040Days
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
 * InlineResponse20040Days Class Doc Comment
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class InlineResponse20040Days implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'inline_response_200_40_days';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'nutrition_summary' => '\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary',
        'nutrition_summary_breakfast' => '\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary',
        'nutrition_summary_lunch' => '\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary',
        'nutrition_summary_dinner' => '\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary',
        'day' => 'string',
        'items' => '\com.spoonacular.client\com.spoonacular.client.model\InlineResponse20040Items[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPIFormats = [
        'nutrition_summary' => null,
        'nutrition_summary_breakfast' => null,
        'nutrition_summary_lunch' => null,
        'nutrition_summary_dinner' => null,
        'day' => null,
        'items' => null
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
        'nutrition_summary' => 'nutritionSummary',
        'nutrition_summary_breakfast' => 'nutritionSummaryBreakfast',
        'nutrition_summary_lunch' => 'nutritionSummaryLunch',
        'nutrition_summary_dinner' => 'nutritionSummaryDinner',
        'day' => 'day',
        'items' => 'items'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'nutrition_summary' => 'setNutritionSummary',
        'nutrition_summary_breakfast' => 'setNutritionSummaryBreakfast',
        'nutrition_summary_lunch' => 'setNutritionSummaryLunch',
        'nutrition_summary_dinner' => 'setNutritionSummaryDinner',
        'day' => 'setDay',
        'items' => 'setItems'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'nutrition_summary' => 'getNutritionSummary',
        'nutrition_summary_breakfast' => 'getNutritionSummaryBreakfast',
        'nutrition_summary_lunch' => 'getNutritionSummaryLunch',
        'nutrition_summary_dinner' => 'getNutritionSummaryDinner',
        'day' => 'getDay',
        'items' => 'getItems'
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
        $this->container['nutrition_summary'] = isset($data['nutrition_summary']) ? $data['nutrition_summary'] : null;
        $this->container['nutrition_summary_breakfast'] = isset($data['nutrition_summary_breakfast']) ? $data['nutrition_summary_breakfast'] : null;
        $this->container['nutrition_summary_lunch'] = isset($data['nutrition_summary_lunch']) ? $data['nutrition_summary_lunch'] : null;
        $this->container['nutrition_summary_dinner'] = isset($data['nutrition_summary_dinner']) ? $data['nutrition_summary_dinner'] : null;
        $this->container['day'] = isset($data['day']) ? $data['day'] : null;
        $this->container['items'] = isset($data['items']) ? $data['items'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['day'] === null) {
            $invalidProperties[] = "'day' can't be null";
        }
        if ((mb_strlen($this->container['day']) < 1)) {
            $invalidProperties[] = "invalid value for 'day', the character length must be bigger than or equal to 1.";
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
     * Gets nutrition_summary
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null
     */
    public function getNutritionSummary()
    {
        return $this->container['nutrition_summary'];
    }

    /**
     * Sets nutrition_summary
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null $nutrition_summary nutrition_summary
     *
     * @return $this
     */
    public function setNutritionSummary($nutrition_summary)
    {
        $this->container['nutrition_summary'] = $nutrition_summary;

        return $this;
    }

    /**
     * Gets nutrition_summary_breakfast
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null
     */
    public function getNutritionSummaryBreakfast()
    {
        return $this->container['nutrition_summary_breakfast'];
    }

    /**
     * Sets nutrition_summary_breakfast
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null $nutrition_summary_breakfast nutrition_summary_breakfast
     *
     * @return $this
     */
    public function setNutritionSummaryBreakfast($nutrition_summary_breakfast)
    {
        $this->container['nutrition_summary_breakfast'] = $nutrition_summary_breakfast;

        return $this;
    }

    /**
     * Gets nutrition_summary_lunch
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null
     */
    public function getNutritionSummaryLunch()
    {
        return $this->container['nutrition_summary_lunch'];
    }

    /**
     * Sets nutrition_summary_lunch
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null $nutrition_summary_lunch nutrition_summary_lunch
     *
     * @return $this
     */
    public function setNutritionSummaryLunch($nutrition_summary_lunch)
    {
        $this->container['nutrition_summary_lunch'] = $nutrition_summary_lunch;

        return $this;
    }

    /**
     * Gets nutrition_summary_dinner
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null
     */
    public function getNutritionSummaryDinner()
    {
        return $this->container['nutrition_summary_dinner'];
    }

    /**
     * Sets nutrition_summary_dinner
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20038NutritionSummary|null $nutrition_summary_dinner nutrition_summary_dinner
     *
     * @return $this
     */
    public function setNutritionSummaryDinner($nutrition_summary_dinner)
    {
        $this->container['nutrition_summary_dinner'] = $nutrition_summary_dinner;

        return $this;
    }

    /**
     * Gets day
     *
     * @return string
     */
    public function getDay()
    {
        return $this->container['day'];
    }

    /**
     * Sets day
     *
     * @param string $day day
     *
     * @return $this
     */
    public function setDay($day)
    {

        if ((mb_strlen($day) < 1)) {
            throw new \InvalidArgumentException('invalid length for $day when calling InlineResponse20040Days., must be bigger than or equal to 1.');
        }

        $this->container['day'] = $day;

        return $this;
    }

    /**
     * Gets items
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20040Items[]|null
     */
    public function getItems()
    {
        return $this->container['items'];
    }

    /**
     * Sets items
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\InlineResponse20040Items[]|null $items items
     *
     * @return $this
     */
    public function setItems($items)
    {
        $this->container['items'] = $items;

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


