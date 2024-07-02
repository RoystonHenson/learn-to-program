# Sort array like a dictionary after capitalising

def dictionary_sort(array)
  array_capitals_sorter(array, [])
end

def array_capitals_sorter(array_to_sort, sorted)
  if array_to_sort.length != 0
    array_to_sort.each { |x| x.capitalize! }
    sorted << array_to_sort.min
    array_to_sort.delete(array_to_sort.min)
    array_sorter(array_to_sort, sorted)
  else
    puts sorted 
  end
end

# Shuffle array
def shuffle_array(array)
  array_shuffler(array, [])  
end

def array_shuffler(array_to_shuffle, shuffled)
  if array_to_shuffle.length != 0
    shuffled << array_to_shuffle.delete_at(rand(0..array_to_shuffle.length))
    array_shuffler(array_to_shuffle, shuffled)
  else
    puts shuffled
  end
end

# Sort array
def sort_array(array)
  array_sorter(array, [])
end

def array_sorter(array_to_sort, sorted)
  if array_to_sort.length != 0
    sorted << array_to_sort.min
    array_to_sort.delete(array_to_sort.min)
    array_sorter(array_to_sort, sorted)
  else
    puts sorted 
  end
end