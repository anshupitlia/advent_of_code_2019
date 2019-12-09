def add(op1, op2)
	return op1 + op2
end

def multiply(op1, op2)
	return op1*op2
end

def int_code(input)
index = 0
while index < input.length && input[index] != 99 
	case input[index]
	when 1
		index += 1
		op1_pos = input[index]
		index += 1
		op2_pos = input[index]
		result = add(input[op1_pos], input[op2_pos])
	when 2
		index += 1
		op1_pos = input[index]
		index += 1
		op2_pos = input[index]
		result = multiply(input[op1_pos], input[op2_pos])
	else 
		abort("invalid input")
	end
	index += 1 
	input[input[index]] = result
	index += 1
end
return input
end

noun = 12
verb = 2
input = Array[1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,9,1,19,1,19,5,23,1,23,5,27,2,27,10,31,1,31,9,35,1,35,5,39,1,6,39,43,2,9,43,47,1,5,47,51,2,6,51,55,1,5,55,59,2,10,59,63,1,63,6,67,2,67,6,71,2,10,71,75,1,6,75,79,2,79,9,83,1,83,5,87,1,87,9,91,1,91,9,95,1,10,95,99,1,99,13,103,2,6,103,107,1,107,5,111,1,6,111,115,1,9,115,119,1,119,9,123,2,123,10,127,1,6,127,131,2,131,13,135,1,13,135,139,1,9,139,143,1,9,143,147,1,147,13,151,1,151,9,155,1,155,13,159,1,6,159,163,1,13,163,167,1,2,167,171,1,171,13,0,99,2,0,14,0]
input[1] = noun
input[2] = verb

input = int_code(input)

puts input.join(",")