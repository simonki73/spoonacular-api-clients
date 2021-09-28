/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OBJECT_H
#define OAI_OBJECT_H

#include <QJsonObject>
#include <QJsonDocument>

namespace OpenAPI {

class OAIObject {
  public:
    OAIObject() {

    }
    
    OAIObject(QString jsonString) {
        fromJson(jsonString);
    }

    virtual ~OAIObject(){

    }

    virtual QJsonObject asJsonObject() const {
        return jObj;
    }

    virtual QString asJson() const {
        QJsonDocument doc(jObj);
        return doc.toJson(QJsonDocument::Compact);
    }

    virtual void fromJson(QString jsonString) {
        QJsonDocument doc = QJsonDocument::fromJson(jsonString.toUtf8());
        jObj = doc.object();
    }

    virtual void fromJsonObject(QJsonObject json) {
        jObj = json;
    }

    virtual bool isSet() const {
        return false;
    }

    virtual bool isValid() const {
        return true;
    }
private :
    QJsonObject jObj;
};

}

#endif // OAI_OBJECT_H
