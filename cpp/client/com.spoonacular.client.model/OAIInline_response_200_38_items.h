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
 * OAIInline_response_200_38_items.h
 *
 * 
 */

#ifndef OAIInline_response_200_38_items_H
#define OAIInline_response_200_38_items_H

#include <QJsonObject>


#include "com.spoonacular.client.model\OAIInline_response_200_38_value.h"
#include <QString>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_response_200_38_items: public OAIObject {
public:
    OAIInline_response_200_38_items();
    OAIInline_response_200_38_items(QString json);
    ~OAIInline_response_200_38_items() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    qint32 getId() const;
    void setId(const qint32 &id);

    
    qint32 getSlot() const;
    void setSlot(const qint32 &slot);

    
    qint32 getPosition() const;
    void setPosition(const qint32 &position);

    
    QString getType() const;
    void setType(const QString &type);

    
    OAIInline_response_200_38_value getValue() const;
    void setValue(const OAIInline_response_200_38_value &value);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    qint32 id;
    bool m_id_isSet;
    bool m_id_isValid;
    
    qint32 slot;
    bool m_slot_isSet;
    bool m_slot_isValid;
    
    qint32 position;
    bool m_position_isSet;
    bool m_position_isValid;
    
    QString type;
    bool m_type_isSet;
    bool m_type_isValid;
    
    OAIInline_response_200_38_value value;
    bool m_value_isSet;
    bool m_value_isValid;
    
    };

}

#endif // OAIInline_response_200_38_items_H
