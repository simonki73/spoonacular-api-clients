=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.0
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module OpenapiClient
  class InlineResponse2003WinePairingProductMatches
    attr_accessor :id

    attr_accessor :title

    attr_accessor :description

    attr_accessor :price

    attr_accessor :image_url

    attr_accessor :average_rating

    attr_accessor :rating_count

    attr_accessor :score

    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'description' => :'description',
        :'price' => :'price',
        :'image_url' => :'imageUrl',
        :'average_rating' => :'averageRating',
        :'rating_count' => :'ratingCount',
        :'score' => :'score',
        :'link' => :'link'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'title' => :'String',
        :'description' => :'String',
        :'price' => :'String',
        :'image_url' => :'String',
        :'average_rating' => :'Float',
        :'rating_count' => :'Integer',
        :'score' => :'Float',
        :'link' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::InlineResponse2003WinePairingProductMatches` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::InlineResponse2003WinePairingProductMatches`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'average_rating')
        self.average_rating = attributes[:'average_rating']
      end

      if attributes.key?(:'rating_count')
        self.rating_count = attributes[:'rating_count']
      end

      if attributes.key?(:'score')
        self.score = attributes[:'score']
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @description.to_s.length < 1
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 1.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @price.to_s.length < 1
        invalid_properties.push('invalid value for "price", the character length must be great than or equal to 1.')
      end

      if @image_url.nil?
        invalid_properties.push('invalid value for "image_url", image_url cannot be nil.')
      end

      if @image_url.to_s.length < 1
        invalid_properties.push('invalid value for "image_url", the character length must be great than or equal to 1.')
      end

      if @average_rating.nil?
        invalid_properties.push('invalid value for "average_rating", average_rating cannot be nil.')
      end

      if @rating_count.nil?
        invalid_properties.push('invalid value for "rating_count", rating_count cannot be nil.')
      end

      if @score.nil?
        invalid_properties.push('invalid value for "score", score cannot be nil.')
      end

      if @link.nil?
        invalid_properties.push('invalid value for "link", link cannot be nil.')
      end

      if @link.to_s.length < 1
        invalid_properties.push('invalid value for "link", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @title.nil?
      return false if @title.to_s.length < 1
      return false if @description.nil?
      return false if @description.to_s.length < 1
      return false if @price.nil?
      return false if @price.to_s.length < 1
      return false if @image_url.nil?
      return false if @image_url.to_s.length < 1
      return false if @average_rating.nil?
      return false if @rating_count.nil?
      return false if @score.nil?
      return false if @link.nil?
      return false if @link.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if title.nil?
        fail ArgumentError, 'title cannot be nil'
      end

      if title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length < 1
        fail ArgumentError, 'invalid value for "description", the character length must be great than or equal to 1.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] price Value to be assigned
    def price=(price)
      if price.nil?
        fail ArgumentError, 'price cannot be nil'
      end

      if price.to_s.length < 1
        fail ArgumentError, 'invalid value for "price", the character length must be great than or equal to 1.'
      end

      @price = price
    end

    # Custom attribute writer method with validation
    # @param [Object] image_url Value to be assigned
    def image_url=(image_url)
      if image_url.nil?
        fail ArgumentError, 'image_url cannot be nil'
      end

      if image_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "image_url", the character length must be great than or equal to 1.'
      end

      @image_url = image_url
    end

    # Custom attribute writer method with validation
    # @param [Object] link Value to be assigned
    def link=(link)
      if link.nil?
        fail ArgumentError, 'link cannot be nil'
      end

      if link.to_s.length < 1
        fail ArgumentError, 'invalid value for "link", the character length must be great than or equal to 1.'
      end

      @link = link
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          description == o.description &&
          price == o.price &&
          image_url == o.image_url &&
          average_rating == o.average_rating &&
          rating_count == o.rating_count &&
          score == o.score &&
          link == o.link
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, description, price, image_url, average_rating, rating_count, score, link].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        OpenapiClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
