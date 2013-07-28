class String
  alias_method :append, :<<
  alias_method :bytesize, :size unless method_defined?(:bytesize)
end
