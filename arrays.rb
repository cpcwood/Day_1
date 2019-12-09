def array1(array)
  array.map{|n| n.next}
end

p array1([1, 2, 3, 4, 5])

def array2(array)
  array.sort
end

p array2([1, 3, 5, 4, 2])

p array1(array2([1, 3, 5, 4, 2]))

def array3(array)
  array.reduce(:+)
end

p array3([1, 2, 3, 4, 5])

def array4(array)
  array.reduce(:+) * 2
end

p array4([1, 2, 3, 4, 5])
