module Rubinius
  class Tuple < Array
    def copy_from(other, start, length, dest)
      length.times do |i|
        self[dest + i] = other[start + i]
      end
    end
  end
end
