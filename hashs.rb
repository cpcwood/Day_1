def hash_1(hash)
  hash.each_key { |key| hash[key] +=1 }
end

p hash_1({ a: 1, b: 2 })



def hash_2(hash)
  hash.sort_by { |key, value| value}.to_h
end

p hash_2({ a: 2, b: 5, c: 1 })



def hash_3(hash)
  hash_2(hash).values
end

p hash_3({ a: 2, b: 5, c: 1 })



def hash_4(hash)




p hash_4({ a: 1, b: 2, c: 3 })
