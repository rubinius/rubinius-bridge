module Rubinius
  class CompiledCode
    KernelMethodSerial = 47

    attr_accessor :hints         # added by the VM to indicate how it's being used.
    attr_accessor :metadata      # [Tuple]   extra data
    attr_accessor :name          # [Symbol]  name of the method
    attr_accessor :iseq          # [Tuple]   instructions to execute
    attr_accessor :stack_size    # [Integer] size of stack at compile time
    attr_accessor :local_count   # [Integer] number of local vars
    attr_accessor :required_args # [Integer] number of required args
    attr_accessor :post_args     # [Integer] number of args after splat
    attr_accessor :total_args    # [Integer] number of total args
    attr_accessor :splat         # [Integer] POSITION of the splat arg
    attr_accessor :literals      # [Tuple]   tuple of the literals
    attr_accessor :lines         # [Tuple]   tuple of the lines where its found
    attr_accessor :file          # [Symbol]  the file where this comes from
    attr_accessor :local_names   # [Array<Symbol>] names of the local vars
    attr_accessor :scope         # [ConstantScope] scope for looking up constants
    attr_accessor :keywords      # [Tuple] pairs of Symbol name, required flag
    attr_accessor :arity         # [Integer] number of arguments, negative if variadic.
    attr_accessor :literals_count # [Fixnum] number of literals in the instruction stream.
    attr_accessor :primitive
    attr_accessor :block_index

    def decode(bytecodes = @iseq)
      # TODO
    end

    def add_metadata(key, val)
      raise TypeError, "key must be a symbol" unless key.kind_of? Symbol

      case val
      when true, false, Symbol, Fixnum, String
        # ok
      else
        raise TypeError, "invalid type of value"
      end

      @metadata ||= nil # to deal with MRI seeing @metadata as not set

      unless @metadata
        @metadata = Tuple.new(2)
        @metadata[0] = key
        @metadata[1] = val
        return val
      end

      i = 0
      fin = @metadata.size

      while i < fin
        if @metadata[i] == key
          @metadata[i + 1] = val
          return val
        end

        i += 2
      end

      tup = Tuple.new(fin + 2)
      tup.copy_from @metadata, 0, fin, 0
      tup[fin] = key
      tup[fin + 1] = val

      @metadata = tup

      return val
    end
  end
end
