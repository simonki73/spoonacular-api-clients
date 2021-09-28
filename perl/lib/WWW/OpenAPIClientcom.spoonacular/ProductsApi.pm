=begin comment

spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.0
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::ProductsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# autocomplete_product_search
#
# Autocomplete Product Search
# 
# @param string $query The (partial) search query. (required)
# @param int $number The number of results to return (between 1 and 25). (optional)
{
    my $params = {
    'query' => {
        data_type => 'string',
        description => 'The (partial) search query.',
        required => '1',
    },
    'number' => {
        data_type => 'int',
        description => 'The number of results to return (between 1 and 25).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'autocomplete_product_search' } = { 
        summary => 'Autocomplete Product Search',
        params => $params,
        returns => 'InlineResponse20032',
        };
}
# @return InlineResponse20032
#
sub autocomplete_product_search {
    my ($self, %args) = @_;

    # verify the required parameter 'query' is set
    unless (exists $args{'query'}) {
      croak("Missing the required parameter 'query' when calling autocomplete_product_search");
    }

    # parse inputs
    my $_resource_path = '/food/products/suggest';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'query'}) {
        $query_params->{'query'} = $self->{api_client}->to_query_value($args{'query'});
    }

    # query params
    if ( exists $args{'number'}) {
        $query_params->{'number'} = $self->{api_client}->to_query_value($args{'number'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20032', $response);
    return $_response_object;
}

#
# classify_grocery_product
#
# Classify Grocery Product
# 
# @param InlineObject1 $inline_object1  (required)
# @param string $locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)
{
    my $params = {
    'inline_object1' => {
        data_type => 'InlineObject1',
        description => '',
        required => '1',
    },
    'locale' => {
        data_type => 'string',
        description => 'The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'classify_grocery_product' } = { 
        summary => 'Classify Grocery Product',
        params => $params,
        returns => 'InlineResponse20033',
        };
}
# @return InlineResponse20033
#
sub classify_grocery_product {
    my ($self, %args) = @_;

    # verify the required parameter 'inline_object1' is set
    unless (exists $args{'inline_object1'}) {
      croak("Missing the required parameter 'inline_object1' when calling classify_grocery_product");
    }

    # parse inputs
    my $_resource_path = '/food/products/classify';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'locale'}) {
        $query_params->{'locale'} = $self->{api_client}->to_query_value($args{'locale'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'inline_object1'}) {
        $_body_data = $args{'inline_object1'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20033', $response);
    return $_response_object;
}

#
# classify_grocery_product_bulk
#
# Classify Grocery Product Bulk
# 
# @param ARRAY[InlineObject] $inline_object  (required)
# @param string $locale The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)
{
    my $params = {
    'inline_object' => {
        data_type => 'ARRAY[InlineObject]',
        description => '',
        required => '1',
    },
    'locale' => {
        data_type => 'string',
        description => 'The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'classify_grocery_product_bulk' } = { 
        summary => 'Classify Grocery Product Bulk',
        params => $params,
        returns => 'ARRAY[InlineResponse20033]',
        };
}
# @return ARRAY[InlineResponse20033]
#
sub classify_grocery_product_bulk {
    my ($self, %args) = @_;

    # verify the required parameter 'inline_object' is set
    unless (exists $args{'inline_object'}) {
      croak("Missing the required parameter 'inline_object' when calling classify_grocery_product_bulk");
    }

    # parse inputs
    my $_resource_path = '/food/products/classifyBatch';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'locale'}) {
        $query_params->{'locale'} = $self->{api_client}->to_query_value($args{'locale'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'inline_object'}) {
        $_body_data = $args{'inline_object'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[InlineResponse20033]', $response);
    return $_response_object;
}

#
# get_comparable_products
#
# Get Comparable Products
# 
# @param double $upc The UPC of the product for which you want to find comparable products. (required)
{
    my $params = {
    'upc' => {
        data_type => 'double',
        description => 'The UPC of the product for which you want to find comparable products.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_comparable_products' } = { 
        summary => 'Get Comparable Products',
        params => $params,
        returns => 'InlineResponse20031',
        };
}
# @return InlineResponse20031
#
sub get_comparable_products {
    my ($self, %args) = @_;

    # verify the required parameter 'upc' is set
    unless (exists $args{'upc'}) {
      croak("Missing the required parameter 'upc' when calling get_comparable_products");
    }

    # parse inputs
    my $_resource_path = '/food/products/upc/{upc}/comparable';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'upc'}) {
        my $_base_variable = "{" . "upc" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'upc'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20031', $response);
    return $_response_object;
}

#
# get_product_information
#
# Get Product Information
# 
# @param int $id The item&#39;s id. (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The item&#39;s id.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_product_information' } = { 
        summary => 'Get Product Information',
        params => $params,
        returns => 'InlineResponse20030',
        };
}
# @return InlineResponse20030
#
sub get_product_information {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_product_information");
    }

    # parse inputs
    my $_resource_path = '/food/products/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20030', $response);
    return $_response_object;
}

#
# product_nutrition_by_id_image
#
# Product Nutrition by ID Image
# 
# @param double $id The id of the product. (required)
{
    my $params = {
    'id' => {
        data_type => 'double',
        description => 'The id of the product.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'product_nutrition_by_id_image' } = { 
        summary => 'Product Nutrition by ID Image',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub product_nutrition_by_id_image {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling product_nutrition_by_id_image");
    }

    # parse inputs
    my $_resource_path = '/food/products/{id}/nutritionWidget.png';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('image/png');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# product_nutrition_label_image
#
# Product Nutrition Label Image
# 
# @param double $id The product id. (required)
# @param boolean $show_optional_nutrients Whether to show optional nutrients. (optional)
# @param boolean $show_zero_values Whether to show zero values. (optional)
# @param boolean $show_ingredients Whether to show a list of ingredients. (optional)
{
    my $params = {
    'id' => {
        data_type => 'double',
        description => 'The product id.',
        required => '1',
    },
    'show_optional_nutrients' => {
        data_type => 'boolean',
        description => 'Whether to show optional nutrients.',
        required => '0',
    },
    'show_zero_values' => {
        data_type => 'boolean',
        description => 'Whether to show zero values.',
        required => '0',
    },
    'show_ingredients' => {
        data_type => 'boolean',
        description => 'Whether to show a list of ingredients.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'product_nutrition_label_image' } = { 
        summary => 'Product Nutrition Label Image',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub product_nutrition_label_image {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling product_nutrition_label_image");
    }

    # parse inputs
    my $_resource_path = '/food/products/{id}/nutritionLabel.png';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('image/png');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'show_optional_nutrients'}) {
        $query_params->{'showOptionalNutrients'} = $self->{api_client}->to_query_value($args{'show_optional_nutrients'});
    }

    # query params
    if ( exists $args{'show_zero_values'}) {
        $query_params->{'showZeroValues'} = $self->{api_client}->to_query_value($args{'show_zero_values'});
    }

    # query params
    if ( exists $args{'show_ingredients'}) {
        $query_params->{'showIngredients'} = $self->{api_client}->to_query_value($args{'show_ingredients'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# product_nutrition_label_widget
#
# Product Nutrition Label Widget
# 
# @param double $id The product id. (required)
# @param boolean $default_css Whether the default CSS should be added to the response. (optional, default to true)
# @param boolean $show_optional_nutrients Whether to show optional nutrients. (optional)
# @param boolean $show_zero_values Whether to show zero values. (optional)
# @param boolean $show_ingredients Whether to show a list of ingredients. (optional)
{
    my $params = {
    'id' => {
        data_type => 'double',
        description => 'The product id.',
        required => '1',
    },
    'default_css' => {
        data_type => 'boolean',
        description => 'Whether the default CSS should be added to the response.',
        required => '0',
    },
    'show_optional_nutrients' => {
        data_type => 'boolean',
        description => 'Whether to show optional nutrients.',
        required => '0',
    },
    'show_zero_values' => {
        data_type => 'boolean',
        description => 'Whether to show zero values.',
        required => '0',
    },
    'show_ingredients' => {
        data_type => 'boolean',
        description => 'Whether to show a list of ingredients.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'product_nutrition_label_widget' } = { 
        summary => 'Product Nutrition Label Widget',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub product_nutrition_label_widget {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling product_nutrition_label_widget");
    }

    # parse inputs
    my $_resource_path = '/food/products/{id}/nutritionLabel';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/html');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'default_css'}) {
        $query_params->{'defaultCss'} = $self->{api_client}->to_query_value($args{'default_css'});
    }

    # query params
    if ( exists $args{'show_optional_nutrients'}) {
        $query_params->{'showOptionalNutrients'} = $self->{api_client}->to_query_value($args{'show_optional_nutrients'});
    }

    # query params
    if ( exists $args{'show_zero_values'}) {
        $query_params->{'showZeroValues'} = $self->{api_client}->to_query_value($args{'show_zero_values'});
    }

    # query params
    if ( exists $args{'show_ingredients'}) {
        $query_params->{'showIngredients'} = $self->{api_client}->to_query_value($args{'show_ingredients'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# search_grocery_products
#
# Search Grocery Products
# 
# @param string $query The (natural language) search query. (optional)
# @param double $min_calories The minimum amount of calories the product must have. (optional)
# @param double $max_calories The maximum amount of calories the product can have. (optional)
# @param double $min_carbs The minimum amount of carbohydrates in grams the product must have. (optional)
# @param double $max_carbs The maximum amount of carbohydrates in grams the product can have. (optional)
# @param double $min_protein The minimum amount of protein in grams the product must have. (optional)
# @param double $max_protein The maximum amount of protein in grams the product can have. (optional)
# @param double $min_fat The minimum amount of fat in grams the product must have. (optional)
# @param double $max_fat The maximum amount of fat in grams the product can have. (optional)
# @param int $offset The number of results to skip (between 0 and 900). (optional)
# @param int $number The maximum number of items to return (between 1 and 100). Defaults to 10. (optional, default to 10)
{
    my $params = {
    'query' => {
        data_type => 'string',
        description => 'The (natural language) search query.',
        required => '0',
    },
    'min_calories' => {
        data_type => 'double',
        description => 'The minimum amount of calories the product must have.',
        required => '0',
    },
    'max_calories' => {
        data_type => 'double',
        description => 'The maximum amount of calories the product can have.',
        required => '0',
    },
    'min_carbs' => {
        data_type => 'double',
        description => 'The minimum amount of carbohydrates in grams the product must have.',
        required => '0',
    },
    'max_carbs' => {
        data_type => 'double',
        description => 'The maximum amount of carbohydrates in grams the product can have.',
        required => '0',
    },
    'min_protein' => {
        data_type => 'double',
        description => 'The minimum amount of protein in grams the product must have.',
        required => '0',
    },
    'max_protein' => {
        data_type => 'double',
        description => 'The maximum amount of protein in grams the product can have.',
        required => '0',
    },
    'min_fat' => {
        data_type => 'double',
        description => 'The minimum amount of fat in grams the product must have.',
        required => '0',
    },
    'max_fat' => {
        data_type => 'double',
        description => 'The maximum amount of fat in grams the product can have.',
        required => '0',
    },
    'offset' => {
        data_type => 'int',
        description => 'The number of results to skip (between 0 and 900).',
        required => '0',
    },
    'number' => {
        data_type => 'int',
        description => 'The maximum number of items to return (between 1 and 100). Defaults to 10.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_grocery_products' } = { 
        summary => 'Search Grocery Products',
        params => $params,
        returns => 'InlineResponse20027',
        };
}
# @return InlineResponse20027
#
sub search_grocery_products {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/food/products/search';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'query'}) {
        $query_params->{'query'} = $self->{api_client}->to_query_value($args{'query'});
    }

    # query params
    if ( exists $args{'min_calories'}) {
        $query_params->{'minCalories'} = $self->{api_client}->to_query_value($args{'min_calories'});
    }

    # query params
    if ( exists $args{'max_calories'}) {
        $query_params->{'maxCalories'} = $self->{api_client}->to_query_value($args{'max_calories'});
    }

    # query params
    if ( exists $args{'min_carbs'}) {
        $query_params->{'minCarbs'} = $self->{api_client}->to_query_value($args{'min_carbs'});
    }

    # query params
    if ( exists $args{'max_carbs'}) {
        $query_params->{'maxCarbs'} = $self->{api_client}->to_query_value($args{'max_carbs'});
    }

    # query params
    if ( exists $args{'min_protein'}) {
        $query_params->{'minProtein'} = $self->{api_client}->to_query_value($args{'min_protein'});
    }

    # query params
    if ( exists $args{'max_protein'}) {
        $query_params->{'maxProtein'} = $self->{api_client}->to_query_value($args{'max_protein'});
    }

    # query params
    if ( exists $args{'min_fat'}) {
        $query_params->{'minFat'} = $self->{api_client}->to_query_value($args{'min_fat'});
    }

    # query params
    if ( exists $args{'max_fat'}) {
        $query_params->{'maxFat'} = $self->{api_client}->to_query_value($args{'max_fat'});
    }

    # query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }

    # query params
    if ( exists $args{'number'}) {
        $query_params->{'number'} = $self->{api_client}->to_query_value($args{'number'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20027', $response);
    return $_response_object;
}

#
# search_grocery_products_by_upc
#
# Search Grocery Products by UPC
# 
# @param double $upc The product&#39;s UPC. (required)
{
    my $params = {
    'upc' => {
        data_type => 'double',
        description => 'The product&#39;s UPC.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'search_grocery_products_by_upc' } = { 
        summary => 'Search Grocery Products by UPC',
        params => $params,
        returns => 'InlineResponse20028',
        };
}
# @return InlineResponse20028
#
sub search_grocery_products_by_upc {
    my ($self, %args) = @_;

    # verify the required parameter 'upc' is set
    unless (exists $args{'upc'}) {
      croak("Missing the required parameter 'upc' when calling search_grocery_products_by_upc");
    }

    # parse inputs
    my $_resource_path = '/food/products/upc/{upc}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'upc'}) {
        my $_base_variable = "{" . "upc" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'upc'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20028', $response);
    return $_response_object;
}

#
# visualize_product_nutrition_by_id
#
# Product Nutrition by ID Widget
# 
# @param int $id The item&#39;s id. (required)
# @param boolean $default_css Whether the default CSS should be added to the response. (optional, default to true)
# @param string $accept Accept header. (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The item&#39;s id.',
        required => '1',
    },
    'default_css' => {
        data_type => 'boolean',
        description => 'Whether the default CSS should be added to the response.',
        required => '0',
    },
    'accept' => {
        data_type => 'string',
        description => 'Accept header.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'visualize_product_nutrition_by_id' } = { 
        summary => 'Product Nutrition by ID Widget',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub visualize_product_nutrition_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling visualize_product_nutrition_by_id");
    }

    # parse inputs
    my $_resource_path = '/food/products/{id}/nutritionWidget';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/html');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'default_css'}) {
        $query_params->{'defaultCss'} = $self->{api_client}->to_query_value($args{'default_css'});
    }

    # header params
    if ( exists $args{'accept'}) {
        $header_params->{'Accept'} = $self->{api_client}->to_header_value($args{'accept'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

1;
