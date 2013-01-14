def set_add_el(hash, entry)
  if !hash.has_key?(entry)
    hash[entry] = true
  end
  hash
end

def set_remove_el(hash, entry)
  hash.delete(entry)
  hash
end

def set_list_els(hash)
  hash.keys
end

def member?(hash, key)
  hash.has_key?(key)
end

def union(hash1, hash2)
  hash1.merge(hash2)
end

def set_intersection(hash1, hash2)
  new_hash = {}
  hash1.each do |k,v|
    if hash2[k] == v
      new_hash[k] = v
    end
  end
  new_hash
end

def set_minus(hash1, hash2)
  new_hash = hash1
  hash1.each do |k,v|
    if hash2[k] == v
      new_hash.delete(k)
    end
  end
  new_hash
end