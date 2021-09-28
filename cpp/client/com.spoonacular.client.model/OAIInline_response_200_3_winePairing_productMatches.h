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
 * OAIInline_response_200_3_winePairing_productMatches.h
 *
 * 
 */

#ifndef OAIInline_response_200_3_winePairing_productMatches_H
#define OAIInline_response_200_3_winePairing_productMatches_H

#include <QJsonObject>


#include "com.spoonacular.client.model\OAINumber.h"
#include <QString>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_response_200_3_winePairing_productMatches: public OAIObject {
public:
    OAIInline_response_200_3_winePairing_productMatches();
    OAIInline_response_200_3_winePairing_productMatches(QString json);
    ~OAIInline_response_200_3_winePairing_productMatches() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    qint32 getId() const;
    void setId(const qint32 &id);

    
    QString getTitle() const;
    void setTitle(const QString &title);

    
    QString getDescription() const;
    void setDescription(const QString &description);

    
    QString getPrice() const;
    void setPrice(const QString &price);

    
    QString getImageUrl() const;
    void setImageUrl(const QString &image_url);

    
    OAINumber getAverageRating() const;
    void setAverageRating(const OAINumber &average_rating);

    
    qint32 getRatingCount() const;
    void setRatingCount(const qint32 &rating_count);

    
    OAINumber getScore() const;
    void setScore(const OAINumber &score);

    
    QString getLink() const;
    void setLink(const QString &link);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    qint32 id;
    bool m_id_isSet;
    bool m_id_isValid;
    
    QString title;
    bool m_title_isSet;
    bool m_title_isValid;
    
    QString description;
    bool m_description_isSet;
    bool m_description_isValid;
    
    QString price;
    bool m_price_isSet;
    bool m_price_isValid;
    
    QString image_url;
    bool m_image_url_isSet;
    bool m_image_url_isValid;
    
    OAINumber average_rating;
    bool m_average_rating_isSet;
    bool m_average_rating_isValid;
    
    qint32 rating_count;
    bool m_rating_count_isSet;
    bool m_rating_count_isValid;
    
    OAINumber score;
    bool m_score_isSet;
    bool m_score_isValid;
    
    QString link;
    bool m_link_isSet;
    bool m_link_isValid;
    
    };

}

#endif // OAIInline_response_200_3_winePairing_productMatches_H
