#-----------------Story----------------------#
# return all the possible combinations of unique pairs (2 integers only). 
# No duplicate pairs are allowed.
#--------------------------------------------#
#----------------Examples--------------------#
# #Example 1
# Input: [1, 2, 3, 4]
# Output: [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]

# #Example 2
# Input: [54, 77]
# Output[[54, 77]]

# #Example 3
# Input: []
# Output: []
#--------------------------------------------#
#----------------Questions-------------------#
# 
#--------------------------------------------#
#----------------Notes-----------------------#
# method takes one argument (array)
# method returns array of arrays
# method must return all possible combinations of unique pairs
# method must not return duplicate pairs
#--------------------------------------------#


def unique_pairs(array)
  pairs = [] # create empty array to store pairs
  if array.length != 0 # check if array is empty
    array.each_with_index do |num, index| # iterate through array and get index
      array.each_with_index do |num2, index2| # iterate through array and get index of second number
        if index2 > index # check if index2 is greater than index to avoid duplicate pairs
          pairs << [num, num2] # add pair to pairs array
        end
      end
    end
  end
  pairs # return pairs array
end

array_1 = [1, 2, 3, 4]
array_2 = [54, 77]
array_3 = []
p unique_pairs(array_1)
p unique_pairs(array_2)
p unique_pairs(array_3)
