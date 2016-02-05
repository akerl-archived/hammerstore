require 'hammerspace'

##
# Hammerspace-backed Store designed for BasicCache
module HammerStore
  class << self
    ##
    # Insert a helper .new() method for creating a new Store object

    def new(*args)
      self::Store.new(*args)
    end
  end

  ##
  # Hammerspace-backed store object
  class Store
    attr_reader :data, :file

    ##
    # Generate an empty store

    def initialize(params = {})
      @file = params[:file] || raise('You must specify a file')
      @data = Hammerspace.new(@file)
    end

    ##
    # Clears a specified key or the whole store

    def clear!(key = nil)
      if key.nil?
        @data.clear && {}
      else
        key = prep(key)
        value = @data[key]
        @data.delete key
        parse value
      end
    end

    ##
    # Retrieve a key

    def [](key)
      parse @data[prep(key)]
    end

    ##
    # Set a key

    def []=(key, value)
      @data[prep(key)] = prep(value)
    end

    ##
    # Return the size of the store

    def size
      @data.size
    end

    ##
    # Check for a key in the store

    def include?(key)
      @data.key? prep(key)
    end

    ##
    # Array of keys in the store

    def keys
      @data.keys.map { |x| parse x }
    end

    private

    def prep(object)
      Marshal.dump object
    end

    def parse(object)
      object.nil? ? nil : Marshal.load(object)
    end
  end
end
