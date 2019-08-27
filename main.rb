array = [ 4, 3, 78, 2, 0, 2 ]


def bubble_sort(array)
  is_finished = false

  while is_finished == false
    is_finished = true
    counter = 1

    # loop from 0 to 5
    for num in 0...array.length - counter
      if array[num] > array[num + 1]
        #swap numbers
        aux = array[num]
        array[num] = array[num + 1]
        array[num + 1] = aux
        is_finished = false
      end
    end

    counter += 1

    print array
    puts "\n"

  end
end

bubble_sort(array)


def bubble_sort_by(array)
  is_finished = false

  while is_finished == false
    is_finished = true
    counter = 1

    # loop from 0 to 5
    for num in 0...array.length - counter
      if yield(array[num], array[num + 1]) > 0
        #swap numbers
        aux = array[num]
        array[num] = array[num + 1]
        array[num + 1] = aux
        is_finished = false
      end
    end

    counter += 1
    print array
    puts "\n"

  end
end

bubble_sort_by(['hi', 'hello','hey', 'ola', 'holaaaa', 'oi']) do |left,right|
  left.length - right.length
end
