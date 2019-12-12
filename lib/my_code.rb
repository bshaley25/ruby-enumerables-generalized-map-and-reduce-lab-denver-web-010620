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

def reduce(source_array, sv = nil)
  if sv
    sum = sv
    index = 0 
  else
    sum = source_array[0]
    index = 1
  end
  
  while index < source_array.length
   sum = yield(sv, source_array[index])
   index += 1 
   sum
  end
end