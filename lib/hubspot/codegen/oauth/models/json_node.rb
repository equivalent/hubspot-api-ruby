=begin
#OAuthService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module Hubspot
  module Client
    module OAuth
      module Models
        class JsonNode
          attr_accessor :array

          attr_accessor :null

          attr_accessor :float

          attr_accessor :node_type

          attr_accessor :number

          attr_accessor :missing_node

          attr_accessor :object

          attr_accessor :value_node

          attr_accessor :container_node

          attr_accessor :pojo

          attr_accessor :integral_number

          attr_accessor :floating_point_number

          attr_accessor :short

          attr_accessor :int

          attr_accessor :long

          attr_accessor :double

          attr_accessor :big_decimal

          attr_accessor :big_integer

          attr_accessor :textual

          attr_accessor :boolean

          attr_accessor :binary

          class EnumAttributeValidator
            attr_reader :datatype
            attr_reader :allowable_values

            def initialize(datatype, allowable_values)
              @allowable_values = allowable_values.map do |value|
                case datatype.to_s
                when /Integer/i
                  value.to_i
                when /Float/i
                  value.to_f
                else
                  value
                end
              end
            end

            def valid?(value)
              !value || allowable_values.include?(value)
            end
          end

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'array' => :'array',
              :'null' => :'null',
              :'float' => :'float',
              :'node_type' => :'nodeType',
              :'number' => :'number',
              :'missing_node' => :'missingNode',
              :'object' => :'object',
              :'value_node' => :'valueNode',
              :'container_node' => :'containerNode',
              :'pojo' => :'pojo',
              :'integral_number' => :'integralNumber',
              :'floating_point_number' => :'floatingPointNumber',
              :'short' => :'short',
              :'int' => :'int',
              :'long' => :'long',
              :'double' => :'double',
              :'big_decimal' => :'bigDecimal',
              :'big_integer' => :'bigInteger',
              :'textual' => :'textual',
              :'boolean' => :'boolean',
              :'binary' => :'binary'
            }
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'array' => :'BOOLEAN',
              :'null' => :'BOOLEAN',
              :'float' => :'BOOLEAN',
              :'node_type' => :'String',
              :'number' => :'BOOLEAN',
              :'missing_node' => :'BOOLEAN',
              :'object' => :'BOOLEAN',
              :'value_node' => :'BOOLEAN',
              :'container_node' => :'BOOLEAN',
              :'pojo' => :'BOOLEAN',
              :'integral_number' => :'BOOLEAN',
              :'floating_point_number' => :'BOOLEAN',
              :'short' => :'BOOLEAN',
              :'int' => :'BOOLEAN',
              :'long' => :'BOOLEAN',
              :'double' => :'BOOLEAN',
              :'big_decimal' => :'BOOLEAN',
              :'big_integer' => :'BOOLEAN',
              :'textual' => :'BOOLEAN',
              :'boolean' => :'BOOLEAN',
              :'binary' => :'BOOLEAN'
            }
          end

          # Initializes the object
          # @param [Hash] attributes Model attributes in the form of hash
          def initialize(attributes = {})
            return unless attributes.is_a?(Hash)

            # convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

            if attributes.has_key?(:'array')
              self.array = attributes[:'array']
            end

            if attributes.has_key?(:'null')
              self.null = attributes[:'null']
            end

            if attributes.has_key?(:'float')
              self.float = attributes[:'float']
            end

            if attributes.has_key?(:'nodeType')
              self.node_type = attributes[:'nodeType']
            end

            if attributes.has_key?(:'number')
              self.number = attributes[:'number']
            end

            if attributes.has_key?(:'missingNode')
              self.missing_node = attributes[:'missingNode']
            end

            if attributes.has_key?(:'object')
              self.object = attributes[:'object']
            end

            if attributes.has_key?(:'valueNode')
              self.value_node = attributes[:'valueNode']
            end

            if attributes.has_key?(:'containerNode')
              self.container_node = attributes[:'containerNode']
            end

            if attributes.has_key?(:'pojo')
              self.pojo = attributes[:'pojo']
            end

            if attributes.has_key?(:'integralNumber')
              self.integral_number = attributes[:'integralNumber']
            end

            if attributes.has_key?(:'floatingPointNumber')
              self.floating_point_number = attributes[:'floatingPointNumber']
            end

            if attributes.has_key?(:'short')
              self.short = attributes[:'short']
            end

            if attributes.has_key?(:'int')
              self.int = attributes[:'int']
            end

            if attributes.has_key?(:'long')
              self.long = attributes[:'long']
            end

            if attributes.has_key?(:'double')
              self.double = attributes[:'double']
            end

            if attributes.has_key?(:'bigDecimal')
              self.big_decimal = attributes[:'bigDecimal']
            end

            if attributes.has_key?(:'bigInteger')
              self.big_integer = attributes[:'bigInteger']
            end

            if attributes.has_key?(:'textual')
              self.textual = attributes[:'textual']
            end

            if attributes.has_key?(:'boolean')
              self.boolean = attributes[:'boolean']
            end

            if attributes.has_key?(:'binary')
              self.binary = attributes[:'binary']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            node_type_validator = EnumAttributeValidator.new('String', ['ARRAY', 'BINARY', 'BOOLEAN', 'MISSING', 'NULL', 'NUMBER', 'OBJECT', 'POJO', 'STRING'])
            return false unless node_type_validator.valid?(@node_type)
            true
          end

          # Custom attribute writer method checking allowed values (enum).
          # @param [Object] node_type Object to be assigned
          def node_type=(node_type)
            validator = EnumAttributeValidator.new('String', ['ARRAY', 'BINARY', 'BOOLEAN', 'MISSING', 'NULL', 'NUMBER', 'OBJECT', 'POJO', 'STRING'])
            unless validator.valid?(node_type)
              fail ArgumentError, 'invalid value for "node_type", must be one of #{validator.allowable_values}.'
            end
            @node_type = node_type
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                array == o.array &&
                null == o.null &&
                float == o.float &&
                node_type == o.node_type &&
                number == o.number &&
                missing_node == o.missing_node &&
                object == o.object &&
                value_node == o.value_node &&
                container_node == o.container_node &&
                pojo == o.pojo &&
                integral_number == o.integral_number &&
                floating_point_number == o.floating_point_number &&
                short == o.short &&
                int == o.int &&
                long == o.long &&
                double == o.double &&
                big_decimal == o.big_decimal &&
                big_integer == o.big_integer &&
                textual == o.textual &&
                boolean == o.boolean &&
                binary == o.binary
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Fixnum] Hash code
          def hash
            [array, null, float, node_type, number, missing_node, object, value_node, container_node, pojo, integral_number, floating_point_number, short, int, long, double, big_decimal, big_integer, textual, boolean, binary].hash
          end

          # Builds the object from hash
          # @param [Hash] attributes Model attributes in the form of hash
          # @return [Object] Returns the model itself
          def build_from_hash(attributes)
            return nil unless attributes.is_a?(Hash)
            self.class.openapi_types.each_pair do |key, type|
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
              temp_model = OpenapiClient.const_get(type).new
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
    end
  end
end