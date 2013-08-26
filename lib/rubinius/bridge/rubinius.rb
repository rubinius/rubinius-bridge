module Rubinius
  Config = { 'eval.cache' => false }

  def synchronize(obj)
    yield
  end
end
