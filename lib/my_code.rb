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

def reduce(source_array, num = nil)