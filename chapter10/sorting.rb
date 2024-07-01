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