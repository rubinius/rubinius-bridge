require "rubinius/bridge/version"

if RedCard.check :mri
  require "rubinius/bridge/object"
  require "rubinius/bridge/array"
  require "rubinius/bridge/string"
  require "rubinius/bridge/rubinius"
  require "rubinius/bridge/executable"
  require "rubinius/bridge/lookup_table"
  require "rubinius/bridge/tuple"
end
