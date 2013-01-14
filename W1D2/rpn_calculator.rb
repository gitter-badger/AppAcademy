class RPNCalculator
	
	def initialize
		@stack = []
	end

	def push(num)
		@stack << num.to_f
	end

	def plus
		if stack_full?
			@value = @stack.pop + @stack.pop
			@stack << @value
		else
			calcempt
		end
	end

	def minus
		if stack_full?
			@value = @stack.pop - @stack.pop
			@stack << @value
		else
			calcempt
		end
	end

	def divide
		if stack_full?
			@value = @stack.pop / @stack.pop
			@stack << @value
		else
			calcempt
		end
	end

	def times
		if stack_full?
			@value = @stack.pop * @stack.pop
			@stack << @value
		else
			calcempt
		end
	end

	def value
		@value
	end

	def calcempt
		raise "calculator is empty"
	end

	def stack_full?
		if @stack.count > 1
			true
		else
			false
		end
	end

	def tokens(string)
		token = []
		string.each_char do |element|
			if element =~ /\d/
				token << element.to_i
			elsif element =~ /\S/
				token << element.intern
			end
		end
		token
	end

	def evaluate(string)
		string.each_char do |element|
			if element =~ /\d/
				push(element)
			elsif element == "+"
				plus
			elsif element == "-"
				minus
			elsif element == "*"
				times
			elsif element == "/"
				divide
			end
		end
		value
	end

	def run(filepath="")
		if filepath == ""

			stack = ""
			input = nil
			puts "Welcome to your friendly neighborhood RPN Calculator."
			while input != "="
				puts "Input an operand, value, or type \"=\" to evaluate."
				input = gets.chomp
				stack << input
				puts "Current stack: #{stack}"
			end
			evaluate(stack)

		else
			read_file(filepath)
		end
	end

	def read_file(filepath)
		string = File.read(filepath)
		evaluate(string)
	end

end