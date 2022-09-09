/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIComputeIngredientAmount_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIComputeIngredientAmount_200_response::OAIComputeIngredientAmount_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIComputeIngredientAmount_200_response::OAIComputeIngredientAmount_200_response() {
    this->initializeModel();
}

OAIComputeIngredientAmount_200_response::~OAIComputeIngredientAmount_200_response() {}

void OAIComputeIngredientAmount_200_response::initializeModel() {

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;
}

void OAIComputeIngredientAmount_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIComputeIngredientAmount_200_response::fromJsonObject(QJsonObject json) {

    m_amount_isValid = ::OpenAPI::fromJsonValue(amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;
}

QString OAIComputeIngredientAmount_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIComputeIngredientAmount_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(unit));
    }
    return obj;
}

double OAIComputeIngredientAmount_200_response::getAmount() const {
    return amount;
}
void OAIComputeIngredientAmount_200_response::setAmount(const double &amount) {
    this->amount = amount;
    this->m_amount_isSet = true;
}

bool OAIComputeIngredientAmount_200_response::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAIComputeIngredientAmount_200_response::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAIComputeIngredientAmount_200_response::getUnit() const {
    return unit;
}
void OAIComputeIngredientAmount_200_response::setUnit(const QString &unit) {
    this->unit = unit;
    this->m_unit_isSet = true;
}

bool OAIComputeIngredientAmount_200_response::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAIComputeIngredientAmount_200_response::is_unit_Valid() const{
    return m_unit_isValid;
}

bool OAIComputeIngredientAmount_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIComputeIngredientAmount_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_amount_isValid && m_unit_isValid && true;
}

} // namespace OpenAPI