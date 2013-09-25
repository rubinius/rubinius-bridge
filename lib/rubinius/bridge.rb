require "redcard"
require "rubinius/bridge/version"

unless RedCard.check :rubinius
  require "rubinius/bridge/object"
  require "rubinius/bridge/array"
  require "rubinius/bridge/string"
  require "rubinius/bridge/rubinius"
  require "rubinius/bridge/compiled_code"
  require "rubinius/bridge/exception"
  require "rubinius/bridge/executable"
  require "rubinius/bridge/iseq"
  require "rubinius/bridge/lookup_table"
  require "rubinius/bridge/tuple"
end
