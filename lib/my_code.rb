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

def reduce(source_array, num1 = nil)
  if num1
    sv = num1
    index = 0 
  else
    sv = source_array[0]
    index = 1
  end
  
  while index < source_array.length
    yield(sv, source_array[index])
  end
end