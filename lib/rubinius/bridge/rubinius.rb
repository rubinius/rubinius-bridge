module Rubinius
  def synchronize(obj)
    yield
  end
end
