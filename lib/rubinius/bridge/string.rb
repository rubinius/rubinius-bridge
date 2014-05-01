class String
  alias_method :append, :<<
  alias_method :bytesize, :size unless method_defined?(:bytesize)

  def data
    self
  end

  unless RedCard.check "1.9"
    def encoding
      @encoding ||= Encoding.new
    end

    def force_encoding(encoding)
      @encoding = encoding
      self
    end
  end
end
