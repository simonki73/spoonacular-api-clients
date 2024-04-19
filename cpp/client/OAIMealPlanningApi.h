/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIMealPlanningApi_H
#define OAI_OAIMealPlanningApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIAddMealPlanTemplate_200_response.h"
#include "OAIAddToMealPlan_request.h"
#include "OAIAddToShoppingList_request.h"
#include "OAIConnectUser_200_response.h"
#include "OAIConnectUser_request.h"
#include "OAIGenerateMealPlan_200_response.h"
#include "OAIGenerateShoppingList_200_response.h"
#include "OAIGetMealPlanTemplate_200_response.h"
#include "OAIGetMealPlanTemplates_200_response.h"
#include "OAIGetMealPlanWeek_200_response.h"
#include "OAIGetShoppingList_200_response.h"
#include "OAIObject.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIMealPlanningApi : public QObject {
    Q_OBJECT

public:
    OAIMealPlanningApi(const int timeOut = 0);
    ~OAIMealPlanningApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(const QString &style);
    QString getParamStyleSuffix(const QString &style);
    QString getParamStyleDelimiter(const QString &style, const QString &name, bool isExplode);

    /**
    * @param[in]  username QString [required]
    * @param[in]  hash QString [required]
    */
    void addMealPlanTemplate(const QString &username, const QString &hash);

    /**
    * @param[in]  username QString [required]
    * @param[in]  hash QString [required]
    * @param[in]  oai_add_to_meal_plan_request OAIAddToMealPlan_request [required]
    */
    void addToMealPlan(const QString &username, const QString &hash, const OAIAddToMealPlan_request &oai_add_to_meal_plan_request);

    /**
    * @param[in]  username QString [required]
    * @param[in]  hash QString [required]
    * @param[in]  oai_add_to_shopping_list_request OAIAddToShoppingList_request [required]
    */
    void addToShoppingList(const QString &username, const QString &hash, const OAIAddToShoppingList_request &oai_add_to_shopping_list_request);

    /**
    * @param[in]  username QString [required]
    * @param[in]  date QString [required]
    * @param[in]  hash QString [required]
    */
    void clearMealPlanDay(const QString &username, const QString &date, const QString &hash);

    /**
    * @param[in]  oai_connect_user_request OAIConnectUser_request [required]
    */
    void connectUser(const OAIConnectUser_request &oai_connect_user_request);

    /**
    * @param[in]  username QString [required]
    * @param[in]  id double [required]
    * @param[in]  hash QString [required]
    */
    void deleteFromMealPlan(const QString &username, const double &id, const QString &hash);

    /**
    * @param[in]  username QString [required]
    * @param[in]  id qint32 [required]
    * @param[in]  hash QString [required]
    */
    void deleteFromShoppingList(const QString &username, const qint32 &id, const QString &hash);

    /**
    * @param[in]  username QString [required]
    * @param[in]  id qint32 [required]
    * @param[in]  hash QString [required]
    */
    void deleteMealPlanTemplate(const QString &username, const qint32 &id, const QString &hash);

    /**
    * @param[in]  time_frame QString [optional]
    * @param[in]  target_calories double [optional]
    * @param[in]  diet QString [optional]
    * @param[in]  exclude QString [optional]
    */
    void generateMealPlan(const ::OpenAPI::OptionalParam<QString> &time_frame = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &target_calories = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<QString> &diet = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &exclude = ::OpenAPI::OptionalParam<QString>());

    /**
    * @param[in]  username QString [required]
    * @param[in]  start_date QString [required]
    * @param[in]  end_date QString [required]
    * @param[in]  hash QString [required]
    */
    void generateShoppingList(const QString &username, const QString &start_date, const QString &end_date, const QString &hash);

    /**
    * @param[in]  username QString [required]
    * @param[in]  id qint32 [required]
    * @param[in]  hash QString [required]
    */
    void getMealPlanTemplate(const QString &username, const qint32 &id, const QString &hash);

    /**
    * @param[in]  username QString [required]
    * @param[in]  hash QString [required]
    */
    void getMealPlanTemplates(const QString &username, const QString &hash);

    /**
    * @param[in]  username QString [required]
    * @param[in]  start_date QString [required]
    * @param[in]  hash QString [required]
    */
    void getMealPlanWeek(const QString &username, const QString &start_date, const QString &hash);

    /**
    * @param[in]  username QString [required]
    * @param[in]  hash QString [required]
    */
    void getShoppingList(const QString &username, const QString &hash);


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> _defaultHeaders;
    bool _isResponseCompressionEnabled;
    bool _isRequestCompressionEnabled;
    OAIHttpRequestInput _latestInput;
    OAIHttpRequestWorker *_latestWorker;
    QStringList _latestScope;
    OauthCode _authFlow;
    OauthImplicit _implicitFlow;
    OauthCredentials _credentialFlow;
    OauthPassword _passwordFlow;
    int _OauthMethod = 0;

    void addMealPlanTemplateCallback(OAIHttpRequestWorker *worker);
    void addToMealPlanCallback(OAIHttpRequestWorker *worker);
    void addToShoppingListCallback(OAIHttpRequestWorker *worker);
    void clearMealPlanDayCallback(OAIHttpRequestWorker *worker);
    void connectUserCallback(OAIHttpRequestWorker *worker);
    void deleteFromMealPlanCallback(OAIHttpRequestWorker *worker);
    void deleteFromShoppingListCallback(OAIHttpRequestWorker *worker);
    void deleteMealPlanTemplateCallback(OAIHttpRequestWorker *worker);
    void generateMealPlanCallback(OAIHttpRequestWorker *worker);
    void generateShoppingListCallback(OAIHttpRequestWorker *worker);
    void getMealPlanTemplateCallback(OAIHttpRequestWorker *worker);
    void getMealPlanTemplatesCallback(OAIHttpRequestWorker *worker);
    void getMealPlanWeekCallback(OAIHttpRequestWorker *worker);
    void getShoppingListCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void addMealPlanTemplateSignal(OAIAddMealPlanTemplate_200_response summary);
    void addToMealPlanSignal(OAIObject summary);
    void addToShoppingListSignal(OAIGenerateShoppingList_200_response summary);
    void clearMealPlanDaySignal(OAIObject summary);
    void connectUserSignal(OAIConnectUser_200_response summary);
    void deleteFromMealPlanSignal(OAIObject summary);
    void deleteFromShoppingListSignal(OAIObject summary);
    void deleteMealPlanTemplateSignal(OAIObject summary);
    void generateMealPlanSignal(OAIGenerateMealPlan_200_response summary);
    void generateShoppingListSignal(OAIGenerateShoppingList_200_response summary);
    void getMealPlanTemplateSignal(OAIGetMealPlanTemplate_200_response summary);
    void getMealPlanTemplatesSignal(OAIGetMealPlanTemplates_200_response summary);
    void getMealPlanWeekSignal(OAIGetMealPlanWeek_200_response summary);
    void getShoppingListSignal(OAIGetShoppingList_200_response summary);

    void addMealPlanTemplateSignalFull(OAIHttpRequestWorker *worker, OAIAddMealPlanTemplate_200_response summary);
    void addToMealPlanSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void addToShoppingListSignalFull(OAIHttpRequestWorker *worker, OAIGenerateShoppingList_200_response summary);
    void clearMealPlanDaySignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void connectUserSignalFull(OAIHttpRequestWorker *worker, OAIConnectUser_200_response summary);
    void deleteFromMealPlanSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void deleteFromShoppingListSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void deleteMealPlanTemplateSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void generateMealPlanSignalFull(OAIHttpRequestWorker *worker, OAIGenerateMealPlan_200_response summary);
    void generateShoppingListSignalFull(OAIHttpRequestWorker *worker, OAIGenerateShoppingList_200_response summary);
    void getMealPlanTemplateSignalFull(OAIHttpRequestWorker *worker, OAIGetMealPlanTemplate_200_response summary);
    void getMealPlanTemplatesSignalFull(OAIHttpRequestWorker *worker, OAIGetMealPlanTemplates_200_response summary);
    void getMealPlanWeekSignalFull(OAIHttpRequestWorker *worker, OAIGetMealPlanWeek_200_response summary);
    void getShoppingListSignalFull(OAIHttpRequestWorker *worker, OAIGetShoppingList_200_response summary);

    Q_DECL_DEPRECATED_X("Use addMealPlanTemplateSignalError() instead")
    void addMealPlanTemplateSignalE(OAIAddMealPlanTemplate_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void addMealPlanTemplateSignalError(OAIAddMealPlanTemplate_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use addToMealPlanSignalError() instead")
    void addToMealPlanSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void addToMealPlanSignalError(OAIObject summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use addToShoppingListSignalError() instead")
    void addToShoppingListSignalE(OAIGenerateShoppingList_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void addToShoppingListSignalError(OAIGenerateShoppingList_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use clearMealPlanDaySignalError() instead")
    void clearMealPlanDaySignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void clearMealPlanDaySignalError(OAIObject summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use connectUserSignalError() instead")
    void connectUserSignalE(OAIConnectUser_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void connectUserSignalError(OAIConnectUser_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use deleteFromMealPlanSignalError() instead")
    void deleteFromMealPlanSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void deleteFromMealPlanSignalError(OAIObject summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use deleteFromShoppingListSignalError() instead")
    void deleteFromShoppingListSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void deleteFromShoppingListSignalError(OAIObject summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use deleteMealPlanTemplateSignalError() instead")
    void deleteMealPlanTemplateSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void deleteMealPlanTemplateSignalError(OAIObject summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use generateMealPlanSignalError() instead")
    void generateMealPlanSignalE(OAIGenerateMealPlan_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void generateMealPlanSignalError(OAIGenerateMealPlan_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use generateShoppingListSignalError() instead")
    void generateShoppingListSignalE(OAIGenerateShoppingList_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void generateShoppingListSignalError(OAIGenerateShoppingList_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getMealPlanTemplateSignalError() instead")
    void getMealPlanTemplateSignalE(OAIGetMealPlanTemplate_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getMealPlanTemplateSignalError(OAIGetMealPlanTemplate_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getMealPlanTemplatesSignalError() instead")
    void getMealPlanTemplatesSignalE(OAIGetMealPlanTemplates_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getMealPlanTemplatesSignalError(OAIGetMealPlanTemplates_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getMealPlanWeekSignalError() instead")
    void getMealPlanWeekSignalE(OAIGetMealPlanWeek_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getMealPlanWeekSignalError(OAIGetMealPlanWeek_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getShoppingListSignalError() instead")
    void getShoppingListSignalE(OAIGetShoppingList_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getShoppingListSignalError(OAIGetShoppingList_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use addMealPlanTemplateSignalErrorFull() instead")
    void addMealPlanTemplateSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void addMealPlanTemplateSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use addToMealPlanSignalErrorFull() instead")
    void addToMealPlanSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void addToMealPlanSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use addToShoppingListSignalErrorFull() instead")
    void addToShoppingListSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void addToShoppingListSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use clearMealPlanDaySignalErrorFull() instead")
    void clearMealPlanDaySignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void clearMealPlanDaySignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use connectUserSignalErrorFull() instead")
    void connectUserSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void connectUserSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use deleteFromMealPlanSignalErrorFull() instead")
    void deleteFromMealPlanSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void deleteFromMealPlanSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use deleteFromShoppingListSignalErrorFull() instead")
    void deleteFromShoppingListSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void deleteFromShoppingListSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use deleteMealPlanTemplateSignalErrorFull() instead")
    void deleteMealPlanTemplateSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void deleteMealPlanTemplateSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use generateMealPlanSignalErrorFull() instead")
    void generateMealPlanSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void generateMealPlanSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use generateShoppingListSignalErrorFull() instead")
    void generateShoppingListSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void generateShoppingListSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getMealPlanTemplateSignalErrorFull() instead")
    void getMealPlanTemplateSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getMealPlanTemplateSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getMealPlanTemplatesSignalErrorFull() instead")
    void getMealPlanTemplatesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getMealPlanTemplatesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getMealPlanWeekSignalErrorFull() instead")
    void getMealPlanWeekSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getMealPlanWeekSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use getShoppingListSignalErrorFull() instead")
    void getShoppingListSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getShoppingListSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif