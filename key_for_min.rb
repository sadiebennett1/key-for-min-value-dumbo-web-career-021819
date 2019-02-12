# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  end
  arr = []
  name_hash.collect do |first, second|
    arr << second
  end
  i = arr[0]
  arr.each do |num|
    if num <= i
      i = num
    end
  end
  name_hash.each do |first, second|
    if second == i
      return first
    end
  end

end
