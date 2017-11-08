# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = nil
  min_value = nil
  name_hash.collect do |key, value|
    if min_key
      min_key, min_value = key, value if min_value > value
    else
      min_key, min_value = key, value
    end
  end
  min_key
end
