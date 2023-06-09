#Write a method that takes two parameters, payload and target. The playload should be an array or unique integer values(positive, negative, or 0). The target should be an integer(positive, negative, or 0).Your method/function should search through the payload to find any two numbers that add together to equal the target value.
# ---------------Story---------------------

#When you find a pair of numbers that add up to your target value, you can stop processing/searching and return an array of those two values. If no values are found return an empty array.

#Be careful that you don’t find the same number twice in your payload; for example if your payload contains a 4 and your target is 8, your answer should not indicate that it found 4 twice.

#----------------------Questions/edgecase's-------------



#----------------------Notes---------------------

#metod takes two arguments (array, integer)
# method finds number combo that equals target
# method retuens array with valid combo or return empty array
# return cannot be the same number twice ( if l == l )

payload = [1, 2, 3, 4, 5]
target = 8

def find_target_pair(payload, target)
  payload.each_with_index do |num1, i|
    payload[i+1..-1].each do |num2|
      return [num1, num2] if num1 + num2 == target
    end
  end

  []
end


result = find_target_pair(payload, target)
puts result.inspect