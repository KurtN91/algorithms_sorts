def bucket_sort(a, n, buckets, m)
    for j in 0...m
      buckets[j] = 0
    end
    for i in 0...n
      buckets[a[i]] += 1
    end
    i = 0
    for j in 0...m
      for k in 0...buckets[j]
        a[i] = j
        i += 1
      end
    end
end