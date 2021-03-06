=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module SwaggerClient
  # 200 ok object
  class GetAlliancesAllianceIdOk
    # ID of the corporation that created the alliance
    attr_accessor :creator_corporation_id

    # ID of the character that created the alliance
    attr_accessor :creator_id

    # date_founded string
    attr_accessor :date_founded

    # the executor corporation ID, if this alliance is not closed
    attr_accessor :executor_corporation_id

    # Faction ID this alliance is fighting for, if this alliance is enlisted in factional warfare
    attr_accessor :faction_id

    # the full name of the alliance
    attr_accessor :name

    # the short name of the alliance
    attr_accessor :ticker

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'creator_corporation_id' => :'creator_corporation_id',
        :'creator_id' => :'creator_id',
        :'date_founded' => :'date_founded',
        :'executor_corporation_id' => :'executor_corporation_id',
        :'faction_id' => :'faction_id',
        :'name' => :'name',
        :'ticker' => :'ticker'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'creator_corporation_id' => :'Integer',
        :'creator_id' => :'Integer',
        :'date_founded' => :'DateTime',
        :'executor_corporation_id' => :'Integer',
        :'faction_id' => :'Integer',
        :'name' => :'String',
        :'ticker' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'creator_corporation_id')
        self.creator_corporation_id = attributes[:'creator_corporation_id']
      end

      if attributes.has_key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.has_key?(:'date_founded')
        self.date_founded = attributes[:'date_founded']
      end

      if attributes.has_key?(:'executor_corporation_id')
        self.executor_corporation_id = attributes[:'executor_corporation_id']
      end

      if attributes.has_key?(:'faction_id')
        self.faction_id = attributes[:'faction_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @creator_corporation_id.nil?
        invalid_properties.push('invalid value for "creator_corporation_id", creator_corporation_id cannot be nil.')
      end

      if @creator_id.nil?
        invalid_properties.push('invalid value for "creator_id", creator_id cannot be nil.')
      end

      if @date_founded.nil?
        invalid_properties.push('invalid value for "date_founded", date_founded cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @ticker.nil?
        invalid_properties.push('invalid value for "ticker", ticker cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @creator_corporation_id.nil?
      return false if @creator_id.nil?
      return false if @date_founded.nil?
      return false if @name.nil?
      return false if @ticker.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          creator_corporation_id == o.creator_corporation_id &&
          creator_id == o.creator_id &&
          date_founded == o.date_founded &&
          executor_corporation_id == o.executor_corporation_id &&
          faction_id == o.faction_id &&
          name == o.name &&
          ticker == o.ticker
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [creator_corporation_id, creator_id, date_founded, executor_corporation_id, faction_id, name, ticker].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
