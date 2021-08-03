def postfix_to_infix(input_str, sep = " ")
  operators = ["+", "-", "*", "/", "%", "^"]
  inputs = input_str.split(sep)
  stack = []
  len = inputs.count
  bracket_count = 0
  active_operators = []
  while(!inputs.empty?)
    el = inputs.pop
    if operators.include?(el)
      # unless(active_operators.empty?)
      #   if (operators.index(el) <)
      #   backet_count += 1
      #   stack << ')'
      # end
      active_operators << el
    elsif(active_operators.empty? \
      && !inputs.empty?  \
      && !operators.include?(inputs.last))
      raise "Invalid Input: #{input_str}"
    else
      stack << el
      stack << active_operators.pop unless active_operators.empty?
    end
  end
  # raise "Invalid Input" unless active_operator.nil?
  return stack.reverse.join(sep)
end