=begin
#GameBrain API

#GameBrain API

The version of the OpenAPI document: 1.0.1
Contact: mail@gamebrain.co
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

=end

require 'date'
require 'time'

module OpenapiClient
  class SearchResponse
    attr_accessor :sorting

    attr_accessor :active_filter_options

    attr_accessor :query

    attr_accessor :total_results

    attr_accessor :limit

    attr_accessor :offset

    attr_accessor :results

    attr_accessor :filter_options

    attr_accessor :sorting_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sorting' => :'sorting',
        :'active_filter_options' => :'active_filter_options',
        :'query' => :'query',
        :'total_results' => :'total_results',
        :'limit' => :'limit',
        :'offset' => :'offset',
        :'results' => :'results',
        :'filter_options' => :'filter_options',
        :'sorting_options' => :'sorting_options'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sorting' => :'SearchResponseSorting',
        :'active_filter_options' => :'Array<SearchResponseActiveFilterOptionsInner>',
        :'query' => :'String',
        :'total_results' => :'Integer',
        :'limit' => :'Integer',
        :'offset' => :'Integer',
        :'results' => :'Array<SearchResponseResultsInner>',
        :'filter_options' => :'Array<SearchResponseFilterOptionsInner>',
        :'sorting_options' => :'Array<SearchResponseSortingOptionsInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::SearchResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::SearchResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sorting')
        self.sorting = attributes[:'sorting']
      end

      if attributes.key?(:'active_filter_options')
        if (value = attributes[:'active_filter_options']).is_a?(Array)
          self.active_filter_options = value
        end
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'total_results')
        self.total_results = attributes[:'total_results']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'offset')
        self.offset = attributes[:'offset']
      end

      if attributes.key?(:'results')
        if (value = attributes[:'results']).is_a?(Array)
          self.results = value
        end
      end

      if attributes.key?(:'filter_options')
        if (value = attributes[:'filter_options']).is_a?(Array)
          self.filter_options = value
        end
      end

      if attributes.key?(:'sorting_options')
        if (value = attributes[:'sorting_options']).is_a?(Array)
          self.sorting_options = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@active_filter_options.nil? && @active_filter_options.length > 100
        invalid_properties.push('invalid value for "active_filter_options", number of items must be less than or equal to 100.')
      end

      if !@results.nil? && @results.length > 100
        invalid_properties.push('invalid value for "results", number of items must be less than or equal to 100.')
      end

      if !@filter_options.nil? && @filter_options.length > 100
        invalid_properties.push('invalid value for "filter_options", number of items must be less than or equal to 100.')
      end

      if !@sorting_options.nil? && @sorting_options.length > 100
        invalid_properties.push('invalid value for "sorting_options", number of items must be less than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@active_filter_options.nil? && @active_filter_options.length > 100
      return false if !@results.nil? && @results.length > 100
      return false if !@filter_options.nil? && @filter_options.length > 100
      return false if !@sorting_options.nil? && @sorting_options.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] active_filter_options Value to be assigned
    def active_filter_options=(active_filter_options)
      if active_filter_options.nil?
        fail ArgumentError, 'active_filter_options cannot be nil'
      end

      if active_filter_options.length > 100
        fail ArgumentError, 'invalid value for "active_filter_options", number of items must be less than or equal to 100.'
      end

      @active_filter_options = active_filter_options
    end

    # Custom attribute writer method with validation
    # @param [Object] results Value to be assigned
    def results=(results)
      if results.nil?
        fail ArgumentError, 'results cannot be nil'
      end

      if results.length > 100
        fail ArgumentError, 'invalid value for "results", number of items must be less than or equal to 100.'
      end

      @results = results
    end

    # Custom attribute writer method with validation
    # @param [Object] filter_options Value to be assigned
    def filter_options=(filter_options)
      if filter_options.nil?
        fail ArgumentError, 'filter_options cannot be nil'
      end

      if filter_options.length > 100
        fail ArgumentError, 'invalid value for "filter_options", number of items must be less than or equal to 100.'
      end

      @filter_options = filter_options
    end

    # Custom attribute writer method with validation
    # @param [Object] sorting_options Value to be assigned
    def sorting_options=(sorting_options)
      if sorting_options.nil?
        fail ArgumentError, 'sorting_options cannot be nil'
      end

      if sorting_options.length > 100
        fail ArgumentError, 'invalid value for "sorting_options", number of items must be less than or equal to 100.'
      end

      @sorting_options = sorting_options
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sorting == o.sorting &&
          active_filter_options == o.active_filter_options &&
          query == o.query &&
          total_results == o.total_results &&
          limit == o.limit &&
          offset == o.offset &&
          results == o.results &&
          filter_options == o.filter_options &&
          sorting_options == o.sorting_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sorting, active_filter_options, query, total_results, limit, offset, results, filter_options, sorting_options].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
