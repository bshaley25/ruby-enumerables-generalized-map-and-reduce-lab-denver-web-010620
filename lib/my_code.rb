# Your Code Here

def map(source_array)
    result = []
    index = 0 
    while index < source_array.length
      result.push(yield(source_array[index])) 
      index += 1 
    end
    result
end

def reduce(array, sv=nil)
  if sv
    sum = sv
    i = 0 
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
   sum = yield(sum, array[i])
   i += 1 
  end
  sum
end