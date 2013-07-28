class Object
  def StringValue(obj)
    return obj if obj.kind_of?(String)

    begin
      obj.to_str
    rescue Exception => orig
      raise TypeError,
            "Coercion error: #{obj.inspect}.to_str => String failed",
            orig
    end

    return ret if ret.kind_of?(String)

    msg = "Coercion error: obj.to_st did NOT return a String (was #{ret.class})"
    raise TypeError, msg
  end
end
