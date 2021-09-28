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
package WWW::OpenAPIClient::Object::InlineResponse2003;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::InlineResponse2003ExtendedIngredients;
use WWW::OpenAPIClient::Object::InlineResponse2003WinePairing;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'InlineResponse2003',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'int',
        base_name => 'id',
        description => '',
        format => '',
        read_only => '',
            },
    'title' => {
        datatype => 'string',
        base_name => 'title',
        description => '',
        format => '',
        read_only => '',
            },
    'image' => {
        datatype => 'string',
        base_name => 'image',
        description => '',
        format => '',
        read_only => '',
            },
    'image_type' => {
        datatype => 'string',
        base_name => 'imageType',
        description => '',
        format => '',
        read_only => '',
            },
    'servings' => {
        datatype => 'double',
        base_name => 'servings',
        description => '',
        format => '',
        read_only => '',
            },
    'ready_in_minutes' => {
        datatype => 'int',
        base_name => 'readyInMinutes',
        description => '',
        format => '',
        read_only => '',
            },
    'license' => {
        datatype => 'string',
        base_name => 'license',
        description => '',
        format => '',
        read_only => '',
            },
    'source_name' => {
        datatype => 'string',
        base_name => 'sourceName',
        description => '',
        format => '',
        read_only => '',
            },
    'source_url' => {
        datatype => 'string',
        base_name => 'sourceUrl',
        description => '',
        format => '',
        read_only => '',
            },
    'spoonacular_source_url' => {
        datatype => 'string',
        base_name => 'spoonacularSourceUrl',
        description => '',
        format => '',
        read_only => '',
            },
    'aggregate_likes' => {
        datatype => 'int',
        base_name => 'aggregateLikes',
        description => '',
        format => '',
        read_only => '',
            },
    'health_score' => {
        datatype => 'double',
        base_name => 'healthScore',
        description => '',
        format => '',
        read_only => '',
            },
    'spoonacular_score' => {
        datatype => 'double',
        base_name => 'spoonacularScore',
        description => '',
        format => '',
        read_only => '',
            },
    'price_per_serving' => {
        datatype => 'double',
        base_name => 'pricePerServing',
        description => '',
        format => '',
        read_only => '',
            },
    'analyzed_instructions' => {
        datatype => 'ARRAY[object]',
        base_name => 'analyzedInstructions',
        description => '',
        format => '',
        read_only => '',
            },
    'cheap' => {
        datatype => 'boolean',
        base_name => 'cheap',
        description => '',
        format => '',
        read_only => '',
            },
    'credits_text' => {
        datatype => 'string',
        base_name => 'creditsText',
        description => '',
        format => '',
        read_only => '',
            },
    'cuisines' => {
        datatype => 'ARRAY[string]',
        base_name => 'cuisines',
        description => '',
        format => '',
        read_only => '',
            },
    'dairy_free' => {
        datatype => 'boolean',
        base_name => 'dairyFree',
        description => '',
        format => '',
        read_only => '',
            },
    'diets' => {
        datatype => 'ARRAY[string]',
        base_name => 'diets',
        description => '',
        format => '',
        read_only => '',
            },
    'gaps' => {
        datatype => 'string',
        base_name => 'gaps',
        description => '',
        format => '',
        read_only => '',
            },
    'gluten_free' => {
        datatype => 'boolean',
        base_name => 'glutenFree',
        description => '',
        format => '',
        read_only => '',
            },
    'instructions' => {
        datatype => 'string',
        base_name => 'instructions',
        description => '',
        format => '',
        read_only => '',
            },
    'ketogenic' => {
        datatype => 'boolean',
        base_name => 'ketogenic',
        description => '',
        format => '',
        read_only => '',
            },
    'low_fodmap' => {
        datatype => 'boolean',
        base_name => 'lowFodmap',
        description => '',
        format => '',
        read_only => '',
            },
    'occasions' => {
        datatype => 'ARRAY[string]',
        base_name => 'occasions',
        description => '',
        format => '',
        read_only => '',
            },
    'sustainable' => {
        datatype => 'boolean',
        base_name => 'sustainable',
        description => '',
        format => '',
        read_only => '',
            },
    'vegan' => {
        datatype => 'boolean',
        base_name => 'vegan',
        description => '',
        format => '',
        read_only => '',
            },
    'vegetarian' => {
        datatype => 'boolean',
        base_name => 'vegetarian',
        description => '',
        format => '',
        read_only => '',
            },
    'very_healthy' => {
        datatype => 'boolean',
        base_name => 'veryHealthy',
        description => '',
        format => '',
        read_only => '',
            },
    'very_popular' => {
        datatype => 'boolean',
        base_name => 'veryPopular',
        description => '',
        format => '',
        read_only => '',
            },
    'whole30' => {
        datatype => 'boolean',
        base_name => 'whole30',
        description => '',
        format => '',
        read_only => '',
            },
    'weight_watcher_smart_points' => {
        datatype => 'double',
        base_name => 'weightWatcherSmartPoints',
        description => '',
        format => '',
        read_only => '',
            },
    'dish_types' => {
        datatype => 'ARRAY[string]',
        base_name => 'dishTypes',
        description => '',
        format => '',
        read_only => '',
            },
    'extended_ingredients' => {
        datatype => 'ARRAY[InlineResponse2003ExtendedIngredients]',
        base_name => 'extendedIngredients',
        description => '',
        format => '',
        read_only => '',
            },
    'summary' => {
        datatype => 'string',
        base_name => 'summary',
        description => '',
        format => '',
        read_only => '',
            },
    'wine_pairing' => {
        datatype => 'InlineResponse2003WinePairing',
        base_name => 'winePairing',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'int',
    'title' => 'string',
    'image' => 'string',
    'image_type' => 'string',
    'servings' => 'double',
    'ready_in_minutes' => 'int',
    'license' => 'string',
    'source_name' => 'string',
    'source_url' => 'string',
    'spoonacular_source_url' => 'string',
    'aggregate_likes' => 'int',
    'health_score' => 'double',
    'spoonacular_score' => 'double',
    'price_per_serving' => 'double',
    'analyzed_instructions' => 'ARRAY[object]',
    'cheap' => 'boolean',
    'credits_text' => 'string',
    'cuisines' => 'ARRAY[string]',
    'dairy_free' => 'boolean',
    'diets' => 'ARRAY[string]',
    'gaps' => 'string',
    'gluten_free' => 'boolean',
    'instructions' => 'string',
    'ketogenic' => 'boolean',
    'low_fodmap' => 'boolean',
    'occasions' => 'ARRAY[string]',
    'sustainable' => 'boolean',
    'vegan' => 'boolean',
    'vegetarian' => 'boolean',
    'very_healthy' => 'boolean',
    'very_popular' => 'boolean',
    'whole30' => 'boolean',
    'weight_watcher_smart_points' => 'double',
    'dish_types' => 'ARRAY[string]',
    'extended_ingredients' => 'ARRAY[InlineResponse2003ExtendedIngredients]',
    'summary' => 'string',
    'wine_pairing' => 'InlineResponse2003WinePairing'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'title' => 'title',
    'image' => 'image',
    'image_type' => 'imageType',
    'servings' => 'servings',
    'ready_in_minutes' => 'readyInMinutes',
    'license' => 'license',
    'source_name' => 'sourceName',
    'source_url' => 'sourceUrl',
    'spoonacular_source_url' => 'spoonacularSourceUrl',
    'aggregate_likes' => 'aggregateLikes',
    'health_score' => 'healthScore',
    'spoonacular_score' => 'spoonacularScore',
    'price_per_serving' => 'pricePerServing',
    'analyzed_instructions' => 'analyzedInstructions',
    'cheap' => 'cheap',
    'credits_text' => 'creditsText',
    'cuisines' => 'cuisines',
    'dairy_free' => 'dairyFree',
    'diets' => 'diets',
    'gaps' => 'gaps',
    'gluten_free' => 'glutenFree',
    'instructions' => 'instructions',
    'ketogenic' => 'ketogenic',
    'low_fodmap' => 'lowFodmap',
    'occasions' => 'occasions',
    'sustainable' => 'sustainable',
    'vegan' => 'vegan',
    'vegetarian' => 'vegetarian',
    'very_healthy' => 'veryHealthy',
    'very_popular' => 'veryPopular',
    'whole30' => 'whole30',
    'weight_watcher_smart_points' => 'weightWatcherSmartPoints',
    'dish_types' => 'dishTypes',
    'extended_ingredients' => 'extendedIngredients',
    'summary' => 'summary',
    'wine_pairing' => 'winePairing'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
