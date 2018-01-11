def quick_sort list, first = 0, last = (list.length - 1)
    return list if first >= last
    pivot_position = choose_pivot_between first, last
    pivot_position = partition_around(pivot_position, list, first, last)
    quick_sort(list, first, pivot_position - 1)
    quick_sort(list, pivot_position + 1, last)
  end
  
  def choose_pivot_between first, last
    rand(first..last) 
  end
  
  def partition_around pivot_position, list, first, last
    pivot = list[pivot_position]
    swap(list, pivot_position, first)
    i, j = first, first + 1
    j.upto(last) do |k|
      i += 1 and swap(list, i, k) if list[k] <= pivot
    end
    swap(list, first, i)
    return i
  end
  
  def swap list, a, b
    temp = list[a]
    list[a] = list[b]
    list[b] = temp
  end