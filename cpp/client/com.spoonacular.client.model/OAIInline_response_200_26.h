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

/*
 * OAIInline_response_200_26.h
 *
 * 
 */

#ifndef OAIInline_response_200_26_H
#define OAIInline_response_200_26_H

#include <QJsonObject>


#include <QList>
#include <QString>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_response_200_26: public OAIObject {
public:
    OAIInline_response_200_26();
    OAIInline_response_200_26(QString json);
    ~OAIInline_response_200_26() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    QString getIngredient() const;
    void setIngredient(const QString &ingredient);

    
    QList<QString> getSubstitutes() const;
    void setSubstitutes(const QList<QString> &substitutes);

    
    QString getMessage() const;
    void setMessage(const QString &message);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    QString ingredient;
    bool m_ingredient_isSet;
    bool m_ingredient_isValid;
    
    QList<QString> substitutes;
    bool m_substitutes_isSet;
    bool m_substitutes_isValid;
    
    QString message;
    bool m_message_isSet;
    bool m_message_isValid;
    
    };

}

#endif // OAIInline_response_200_26_H
