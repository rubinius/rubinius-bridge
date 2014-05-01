unless RedCard.check "1.9"
  class Encoding
    attr_reader :name

    def initialize(name="US-ASCII")
      @name = name
    end

    ASCII_8BIT = new "ASCII-8BIT"
  end
end
