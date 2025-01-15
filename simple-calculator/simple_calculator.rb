
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end
  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation.new("Unsupported operation: #{operation}") unless ALLOWED_OPERATIONS.include?(operation) 
    raise ArgumentError.new("Both operands must be numbers.") unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer) 
    if (first_operand == 0 or second_operand == 0) and operation == '/' then return "Division by zero is not allowed." end
    case operation
      when '+' then return "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
      when '/' then return "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      when '*' then return "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    end
  end
end


