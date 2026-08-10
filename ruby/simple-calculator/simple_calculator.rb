class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  # class ArgumentError < StandardError; end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  ALLOWED_TYPES = [Float, Integer].freeze

  def self.calculate(first_operand, second_operand, operation)
    a = first_operand
    b = second_operand

    if ALLOWED_TYPES.include?(a.class) && ALLOWED_TYPES.include?(b.class)
      if operation == '+'
        return "#{a} + #{b} = #{a + b}"

      elsif operation == '/'
        begin 
          if b == 0
            raise ZeroDivisionError.new("Cannot divide by 0!")
          else
            return "#{a} / #{b} = #{a / b}"
          end
        rescue ZeroDivisionError => e
          return "Division by zero is not allowed."
        end

      elsif operation == '*'
        return "#{a} * #{b} = #{a * b}"

      else
        raise UnsupportedOperation.new("Operator '#{operation}' is not supported.")
      end

    else
      raise ArgumentError.new("Both operands must be a numerical value!")
    end
  end
end

puts SimpleCalculator.calculate(1, 1, '+')
puts SimpleCalculator.calculate(6, 2, '/')
puts SimpleCalculator.calculate(5, 5, '*')

begin
  # puts SimpleCalculator.calculate(1, 1, '**')     # PASSED
  # puts SimpleCalculator.calculate('1', 1, '+')   # PASSED
  # puts SimpleCalculator.calculate(1, true, '+')  # PASSED
  puts SimpleCalculator.calculate(5, 0, '/')     # PASSED

rescue ZeroDivisionError => e
  puts "ZeroDivisionError caught: #{e}"
rescue UnsupportedOperation => e
  puts "UnsupportedOperation caught: #{e}"
rescue ArgumentError => e
  puts "ArgumentError caught: #{e}"
end