# frozen_string_literal: true

array = [4, 3, 78, 2, 0, 2]

def bubble_sort(array)
  is_finished = false

  while is_finished == false
    is_finished = true
    counter = 1

    array.each_with_index do |_e, i|
      next if !array[i + 1] || array[i] < array[i + 1]
      if array[i + 1] && array[i] > array[i + 1]
        aux = array[i]
        array[i] = array[i + 1]
        array[i + 1] = aux
        is_finished = false
      end
    end

    counter += 1

  end

  array
end

print bubble_sort(array)

def bubble_sort_by(array)
  is_finished = false

  while is_finished == false
    is_finished = true
    counter = 1

    array.each_with_index do |_e, i|
      next if !array[i + 1] || yield(array[i], array[i + 1]).negative?
      if array[i + 1] && yield(array[i], array[i + 1]).positive?
        aux = array[i]
        array[i] = array[i + 1]
        array[i + 1] = aux
        is_finished = false
      end
    end

    counter += 1

  end

  array
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
