module Rubinius
  Config = { 'eval.cache' => false }

  class CompiledCode
  end

  def synchronize(obj)
    yield
  end
end
