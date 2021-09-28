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

#include "OAIMiscApi.h"
#include "OAIHelpers.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAIMiscApi::OAIMiscApi() {

}

OAIMiscApi::~OAIMiscApi() {

}

OAIMiscApi::OAIMiscApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
OAIMiscApi::detectFoodInText(const QString& content_type) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/detect");
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "POST");

    if (content_type != nullptr) {
        input.headers.insert("Content-Type", content_type);
    }

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::detectFoodInTextCallback);

    worker->execute(&input);
}

void
OAIMiscApi::detectFoodInTextCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_50 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit detectFoodInTextSignal(output);
        emit detectFoodInTextSignalFull(worker, output);
    } else {
        emit detectFoodInTextSignalE(output, error_type, error_str);
        emit detectFoodInTextSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::getARandomFoodJoke() {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/jokes/random");
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::getARandomFoodJokeCallback);

    worker->execute(&input);
}

void
OAIMiscApi::getARandomFoodJokeCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_54 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getARandomFoodJokeSignal(output);
        emit getARandomFoodJokeSignalFull(worker, output);
    } else {
        emit getARandomFoodJokeSignalE(output, error_type, error_str);
        emit getARandomFoodJokeSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::getConversationSuggests(const QString& query, const OAINumber& number) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/converse/suggest");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("query"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(query)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("number"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(number)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::getConversationSuggestsCallback);

    worker->execute(&input);
}

void
OAIMiscApi::getConversationSuggestsCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_56 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getConversationSuggestsSignal(output);
        emit getConversationSuggestsSignalFull(worker, output);
    } else {
        emit getConversationSuggestsSignalE(output, error_type, error_str);
        emit getConversationSuggestsSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::getRandomFoodTrivia() {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/trivia/random");
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::getRandomFoodTriviaCallback);

    worker->execute(&input);
}

void
OAIMiscApi::getRandomFoodTriviaCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_54 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getRandomFoodTriviaSignal(output);
        emit getRandomFoodTriviaSignalFull(worker, output);
    } else {
        emit getRandomFoodTriviaSignalE(output, error_type, error_str);
        emit getRandomFoodTriviaSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::imageAnalysisByURL(const QString& image_url) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/images/analyze");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("imageUrl"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(image_url)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::imageAnalysisByURLCallback);

    worker->execute(&input);
}

void
OAIMiscApi::imageAnalysisByURLCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_48 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit imageAnalysisByURLSignal(output);
        emit imageAnalysisByURLSignalFull(worker, output);
    } else {
        emit imageAnalysisByURLSignalE(output, error_type, error_str);
        emit imageAnalysisByURLSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::imageClassificationByURL(const QString& image_url) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/images/classify");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("imageUrl"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(image_url)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::imageClassificationByURLCallback);

    worker->execute(&input);
}

void
OAIMiscApi::imageClassificationByURLCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_47 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit imageClassificationByURLSignal(output);
        emit imageClassificationByURLSignalFull(worker, output);
    } else {
        emit imageClassificationByURLSignalE(output, error_type, error_str);
        emit imageClassificationByURLSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::searchAllFood(const QString& query, const qint32& offset, const qint32& number) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/search");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("query"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(query)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(offset)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("number"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(number)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::searchAllFoodCallback);

    worker->execute(&input);
}

void
OAIMiscApi::searchAllFoodCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_52 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit searchAllFoodSignal(output);
        emit searchAllFoodSignalFull(worker, output);
    } else {
        emit searchAllFoodSignalE(output, error_type, error_str);
        emit searchAllFoodSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::searchCustomFoods(const QString& username, const QString& hash, const QString& query, const qint32& offset, const qint32& number) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/customFoods/search");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("query"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(query)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("username"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(username)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("hash"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(hash)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(offset)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("number"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(number)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::searchCustomFoodsCallback);

    worker->execute(&input);
}

void
OAIMiscApi::searchCustomFoodsCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_29 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit searchCustomFoodsSignal(output);
        emit searchCustomFoodsSignalFull(worker, output);
    } else {
        emit searchCustomFoodsSignalE(output, error_type, error_str);
        emit searchCustomFoodsSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::searchFoodVideos(const QString& query, const QString& type, const QString& cuisine, const QString& diet, const QString& include_ingredients, const QString& exclude_ingredients, const OAINumber& min_length, const OAINumber& max_length, const qint32& offset, const qint32& number) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/videos/search");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("query"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(query)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("type"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(type)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("cuisine"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(cuisine)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("diet"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(diet)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("includeIngredients"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(include_ingredients)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("excludeIngredients"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(exclude_ingredients)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("minLength"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(min_length)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("maxLength"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(max_length)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("offset"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(offset)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("number"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(number)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::searchFoodVideosCallback);

    worker->execute(&input);
}

void
OAIMiscApi::searchFoodVideosCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_53 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit searchFoodVideosSignal(output);
        emit searchFoodVideosSignalFull(worker, output);
    } else {
        emit searchFoodVideosSignalE(output, error_type, error_str);
        emit searchFoodVideosSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::searchSiteContent(const QString& query) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/site/search");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("query"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(query)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::searchSiteContentCallback);

    worker->execute(&input);
}

void
OAIMiscApi::searchSiteContentCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_51 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit searchSiteContentSignal(output);
        emit searchSiteContentSignalFull(worker, output);
    } else {
        emit searchSiteContentSignalE(output, error_type, error_str);
        emit searchSiteContentSignalEFull(worker, error_type, error_str);
    }
}

void
OAIMiscApi::talkToChatbot(const QString& text, const QString& context_id) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/food/converse");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("text"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(text)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("contextId"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(context_id)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAIMiscApi::talkToChatbotCallback);

    worker->execute(&input);
}

void
OAIMiscApi::talkToChatbotCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIInline_response_200_55 output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit talkToChatbotSignal(output);
        emit talkToChatbotSignalFull(worker, output);
    } else {
        emit talkToChatbotSignalE(output, error_type, error_str);
        emit talkToChatbotSignalEFull(worker, error_type, error_str);
    }
}


}
