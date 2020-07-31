require 'byebug'
def my_min_first(arr)
    small_n = 0 
    arr.each do |el1| #O(n ^ 2) Quadratic
        temp = 0
        arr.each do |el2|
            if el1 < el2 
                temp = el1 
            else 
                temp = el2
            end
        end
        small_n = temp if temp < small_n 
    end
    small_n
end
#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_first(list)  # =>  -5

#phase ii
def my_min(arr)
    small_n = arr.first  
    arr.each_index {|i| small_n = arr[i] if arr[i] < small_n} #O(n)
    small_n
end

#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(arr)
    sum = arr.min #O(n)
    
    (0...arr.length).each do |i|
        (i...arr.length).each do |i2| #O(n^2)
            sum = arr[i..i2].sum if sum < arr[i..i2].sum #O(n^3) - polynomial
        end
    end
    sum
end

def lcs2(arr)
    fin = arr.first
    current = 0 

    arr.each_index do |i|    
        current += arr[i]
        current = arr[i] if current < arr[i]
       fin = current if current > fin
    end  
    fin
end



# list = [5, 3, -7]
# # p largest_contiguous_subsum(list) # => 8
# p lcs2(list)

# list = [2, 3, -6, 7, -6, 7]
# # p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# p lcs2(list)

# list = [-5, -1, -3]
# # p largest_contiguous_subsum(list) # => -1 (from [-1])
# p lcs2(list)



#ANAGRAMS
#Phase i 

def first_anagram?(str1, str2)
    str1.split("").permutation.to_a.each {|sub| return true if sub.join == str2}
    #    O(legth)     O(n!)        O(n!)              O(1)          O(n)
    false
end


# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
 #space O(n) && time O(n * m)
    str1.split("").each do |ele| 
        str2.delete!(ele)  
    end
    str2.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives") 


def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort 
    #O(n log(n))
end

# sorted = false
# until sorted
#     sorted = true
# alpha = ("a".."z").to_a
# str1.each_char do |i|
#     (i+1...str1.length) do |j|
#         if alpha.index(i) > alpha.index(str1[j])
                # sorted = false
#             i, str1[j] = str1[j], i
#         end
#     end
# end
# end


# sorted2 = false
# until sorted2
#     sorted2 = true
# str2.each_char do |i|
#     (i+1...str2.length) do |j|
#         if alpha.index(i) > alpha.index(str2[j])
            # sorted2= false
#             i, str2[j] = str2[j], i
#         end
#     end
# end

# str1 == str2


# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives") 

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0) #O(1)
    hash2 = Hash.new(0)
    str1.each_char {|ch| hash1[ch] += 1} #str1.length and str2.length =>#O(n + m)
    str2.each_char {|ch| hash2[ch] += 1}
    hash1 == hash2 #O(hash.length)
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives") 

#TWO SUM
def bad_two_sum?(arr, n)
    arr.each_index do |el1|
        ((el1+1)...(arr.length - 1)).each do |el2|
            if arr[el1] + arr[el2] == n
                return true 
            end
        end
    end
    false 
end


arr = [0, 1, 5, 7] 
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false