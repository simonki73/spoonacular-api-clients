#import <Foundation/Foundation.h>
#import "OAIConfiguration.h"

/**
* spoonacular API
* The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 80,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
*
* The version of the OpenAPI document: 1.0
* Contact: david@spoonacular.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


@class OAIApiClient;

@interface OAIDefaultConfiguration : NSObject <OAIConfiguration>


/**
 * Default api logger
 */
@property (nonatomic, strong) OAILogger * logger;

/**
 * Default base url
 */
@property (nonatomic) NSString *host;

/**
 * Api key values for Api Key type Authentication
 *
 * To add or remove api key, use `setApiKey:forApiKeyIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKey;

/**
 * Api key prefix values to be prepend to the respective api key
 *
 * To add or remove prefix, use `setApiKeyPrefix:forApiKeyPrefixIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKeyPrefix;

/**
 * Username for HTTP Basic Authentication
 */
 @property (nonatomic) NSString *username;

/**
 * Password for HTTP Basic Authentication
 */
@property (nonatomic) NSString *password;

/**
 * Access token for OAuth
 */
@property (nonatomic) NSString *accessToken;

/**
 * Temp folder for file download
 */
@property (nonatomic) NSString *tempFolderPath;

/**
 * Debug switch, default false
 */
@property (nonatomic) BOOL debug;

/**
 * Gets configuration singleton instance
 */
+ (instancetype) sharedConfig;

/**
 * SSL/TLS verification
 * Set this to NO to skip verifying SSL certificate when calling API from https server
 */
@property (nonatomic) BOOL verifySSL;

/**
 * SSL/TLS verification
 * Set this to customize the certificate file to verify the peer
 */
@property (nonatomic) NSString *sslCaCert;

/**
 * The time zone to use for date serialization
 */
@property (nonatomic) NSTimeZone *serializationTimeZone;

/**
 * Sets API key
 *
 * To remove an apiKey for an identifier, just set the apiKey to nil.
 *
 * @param apiKey     API key or token.
 * @param identifier API key identifier (authentication schema).
 *
 */
- (void) setApiKey:(NSString *)apiKey forApiKeyIdentifier:(NSString*)identifier;

/**
 * Removes api key
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKey:(NSString *)identifier;

/**
 * Sets the prefix for API key
 *
 * @param prefix API key prefix.
 * @param identifier   API key identifier.
 */
- (void) setApiKeyPrefix:(NSString *)prefix forApiKeyPrefixIdentifier:(NSString *)identifier;

/**
 * Removes api key prefix
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKeyPrefix:(NSString *)identifier;

/**
 * Gets API key (with prefix if set)
 */
- (NSString *) getApiKeyWithPrefix:(NSString *) key;

/**
 * Gets Basic Auth token
 */
- (NSString *) getBasicAuthToken;

/**
 * Gets OAuth access token
 */
- (NSString *) getAccessToken;

/**
 * Gets Authentication Settings
 */
- (NSDictionary *) authSettings;

/**
* Default headers for all services
*/
@property (readonly, nonatomic, strong) NSDictionary *defaultHeaders;

/**
* Removes header from defaultHeaders
*
* @param key Header name.
*/
-(void) removeDefaultHeaderForKey:(NSString*)key;

/**
* Sets the header for key
*
* @param value         Value for header name
* @param key           Header name
*/
-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key;

/**
* @param key Header key name.
*/
-(NSString*) defaultHeaderForKey:(NSString*)key;

@end
