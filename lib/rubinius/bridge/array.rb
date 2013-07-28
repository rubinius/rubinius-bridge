class Array
  def to_tuple
    Rubinius::Tuple.new self
  end
end
