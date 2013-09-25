class SyntaxError
  def self.from(message, column, line, code, file)
    message << " #{file}:#{line}:#{column}\n  #{code}"
    SyntaxError.new message
  end
end
