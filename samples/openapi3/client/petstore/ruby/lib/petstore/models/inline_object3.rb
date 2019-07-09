=begin
#OpenAPI Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.0-SNAPSHOT

=end

require 'date'

module Petstore
  class InlineObject3
    # None
    attr_accessor :integer

    # None
    attr_accessor :int32

    # None
    attr_accessor :int64

    # None
    attr_accessor :number

    # None
    attr_accessor :float

    # None
    attr_accessor :double

    # None
    attr_accessor :string

    # None
    attr_accessor :pattern_without_delimiter

    # None
    attr_accessor :byte

    # None
    attr_accessor :binary

    # None
    attr_accessor :date

    # None
    attr_accessor :date_time

    # None
    attr_accessor :password

    # None
    attr_accessor :callback

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'integer' => :'integer',
        :'int32' => :'int32',
        :'int64' => :'int64',
        :'number' => :'number',
        :'float' => :'float',
        :'double' => :'double',
        :'string' => :'string',
        :'pattern_without_delimiter' => :'pattern_without_delimiter',
        :'byte' => :'byte',
        :'binary' => :'binary',
        :'date' => :'date',
        :'date_time' => :'dateTime',
        :'password' => :'password',
        :'callback' => :'callback'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'integer' => :'Integer',
        :'int32' => :'Integer',
        :'int64' => :'Integer',
        :'number' => :'Float',
        :'float' => :'Float',
        :'double' => :'Float',
        :'string' => :'String',
        :'pattern_without_delimiter' => :'String',
        :'byte' => :'String',
        :'binary' => :'File',
        :'date' => :'Date',
        :'date_time' => :'DateTime',
        :'password' => :'String',
        :'callback' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Petstore::InlineObject3` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Petstore::InlineObject3`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'integer')
        self.integer = attributes[:'integer']
      end

      if attributes.key?(:'int32')
        self.int32 = attributes[:'int32']
      end

      if attributes.key?(:'int64')
        self.int64 = attributes[:'int64']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'float')
        self.float = attributes[:'float']
      end

      if attributes.key?(:'double')
        self.double = attributes[:'double']
      end

      if attributes.key?(:'string')
        self.string = attributes[:'string']
      end

      if attributes.key?(:'pattern_without_delimiter')
        self.pattern_without_delimiter = attributes[:'pattern_without_delimiter']
      end

      if attributes.key?(:'byte')
        self.byte = attributes[:'byte']
      end

      if attributes.key?(:'binary')
        self.binary = attributes[:'binary']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'date_time')
        self.date_time = attributes[:'date_time']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'callback')
        self.callback = attributes[:'callback']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@integer.nil? && @integer > 100
        invalid_properties.push('invalid value for "integer", must be smaller than or equal to 100.')
      end

      if !@integer.nil? && @integer < 10
        invalid_properties.push('invalid value for "integer", must be greater than or equal to 10.')
      end

      if !@int32.nil? && @int32 > 200
        invalid_properties.push('invalid value for "int32", must be smaller than or equal to 200.')
      end

      if !@int32.nil? && @int32 < 20
        invalid_properties.push('invalid value for "int32", must be greater than or equal to 20.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @number > 543.2
        invalid_properties.push('invalid value for "number", must be smaller than or equal to 543.2.')
      end

      if @number < 32.1
        invalid_properties.push('invalid value for "number", must be greater than or equal to 32.1.')
      end

      if !@float.nil? && @float > 987.6
        invalid_properties.push('invalid value for "float", must be smaller than or equal to 987.6.')
      end

      if @double.nil?
        invalid_properties.push('invalid value for "double", double cannot be nil.')
      end

      if @double > 123.4
        invalid_properties.push('invalid value for "double", must be smaller than or equal to 123.4.')
      end

      if @double < 67.8
        invalid_properties.push('invalid value for "double", must be greater than or equal to 67.8.')
      end

      pattern = Regexp.new(/[a-z]/i)
      if !@string.nil? && @string !~ pattern
        invalid_properties.push("invalid value for \"string\", must conform to the pattern #{pattern}.")
      end

      if @pattern_without_delimiter.nil?
        invalid_properties.push('invalid value for "pattern_without_delimiter", pattern_without_delimiter cannot be nil.')
      end

      pattern = Regexp.new(/^[A-Z].*/)
      if @pattern_without_delimiter !~ pattern
        invalid_properties.push("invalid value for \"pattern_without_delimiter\", must conform to the pattern #{pattern}.")
      end

      if @byte.nil?
        invalid_properties.push('invalid value for "byte", byte cannot be nil.')
      end

      if !@password.nil? && @password.to_s.length > 64
        invalid_properties.push('invalid value for "password", the character length must be smaller than or equal to 64.')
      end

      if !@password.nil? && @password.to_s.length < 10
        invalid_properties.push('invalid value for "password", the character length must be great than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@integer.nil? && @integer > 100
      return false if !@integer.nil? && @integer < 10
      return false if !@int32.nil? && @int32 > 200
      return false if !@int32.nil? && @int32 < 20
      return false if @number.nil?
      return false if @number > 543.2
      return false if @number < 32.1
      return false if !@float.nil? && @float > 987.6
      return false if @double.nil?
      return false if @double > 123.4
      return false if @double < 67.8
      return false if !@string.nil? && @string !~ Regexp.new(/[a-z]/i)
      return false if @pattern_without_delimiter.nil?
      return false if @pattern_without_delimiter !~ Regexp.new(/^[A-Z].*/)
      return false if @byte.nil?
      return false if !@password.nil? && @password.to_s.length > 64
      return false if !@password.nil? && @password.to_s.length < 10
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] integer Value to be assigned
    def integer=(integer)
      if !integer.nil? && integer > 100
        fail ArgumentError, 'invalid value for "integer", must be smaller than or equal to 100.'
      end

      if !integer.nil? && integer < 10
        fail ArgumentError, 'invalid value for "integer", must be greater than or equal to 10.'
      end

      @integer = integer
    end

    # Custom attribute writer method with validation
    # @param [Object] int32 Value to be assigned
    def int32=(int32)
      if !int32.nil? && int32 > 200
        fail ArgumentError, 'invalid value for "int32", must be smaller than or equal to 200.'
      end

      if !int32.nil? && int32 < 20
        fail ArgumentError, 'invalid value for "int32", must be greater than or equal to 20.'
      end

      @int32 = int32
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if number.nil?
        fail ArgumentError, 'number cannot be nil'
      end

      if number > 543.2
        fail ArgumentError, 'invalid value for "number", must be smaller than or equal to 543.2.'
      end

      if number < 32.1
        fail ArgumentError, 'invalid value for "number", must be greater than or equal to 32.1.'
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] float Value to be assigned
    def float=(float)
      if !float.nil? && float > 987.6
        fail ArgumentError, 'invalid value for "float", must be smaller than or equal to 987.6.'
      end

      @float = float
    end

    # Custom attribute writer method with validation
    # @param [Object] double Value to be assigned
    def double=(double)
      if double.nil?
        fail ArgumentError, 'double cannot be nil'
      end

      if double > 123.4
        fail ArgumentError, 'invalid value for "double", must be smaller than or equal to 123.4.'
      end

      if double < 67.8
        fail ArgumentError, 'invalid value for "double", must be greater than or equal to 67.8.'
      end

      @double = double
    end

    # Custom attribute writer method with validation
    # @param [Object] string Value to be assigned
    def string=(string)
      pattern = Regexp.new(/[a-z]/i)
      if !string.nil? && string !~ pattern
        fail ArgumentError, "invalid value for \"string\", must conform to the pattern #{pattern}."
      end

      @string = string
    end

    # Custom attribute writer method with validation
    # @param [Object] pattern_without_delimiter Value to be assigned
    def pattern_without_delimiter=(pattern_without_delimiter)
      if pattern_without_delimiter.nil?
        fail ArgumentError, 'pattern_without_delimiter cannot be nil'
      end

      pattern = Regexp.new(/^[A-Z].*/)
      if pattern_without_delimiter !~ pattern
        fail ArgumentError, "invalid value for \"pattern_without_delimiter\", must conform to the pattern #{pattern}."
      end

      @pattern_without_delimiter = pattern_without_delimiter
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if !password.nil? && password.to_s.length > 64
        fail ArgumentError, 'invalid value for "password", the character length must be smaller than or equal to 64.'
      end

      if !password.nil? && password.to_s.length < 10
        fail ArgumentError, 'invalid value for "password", the character length must be great than or equal to 10.'
      end

      @password = password
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          integer == o.integer &&
          int32 == o.int32 &&
          int64 == o.int64 &&
          number == o.number &&
          float == o.float &&
          double == o.double &&
          string == o.string &&
          pattern_without_delimiter == o.pattern_without_delimiter &&
          byte == o.byte &&
          binary == o.binary &&
          date == o.date &&
          date_time == o.date_time &&
          password == o.password &&
          callback == o.callback
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [integer, int32, int64, number, float, double, string, pattern_without_delimiter, byte, binary, date, date_time, password, callback].hash
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
        Petstore.const_get(type).build_from_hash(value)
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
