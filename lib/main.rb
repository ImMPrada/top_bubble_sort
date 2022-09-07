def bubble_sort(numbers)
  sorted = true

  (1...numbers.length).each do |i|
    next if numbers[i - 1] <= numbers[i]

    numbers = numbers[0, i - 1] + [numbers[i], numbers[i - 1]] + numbers[i + 1...]
    sorted = false
  end

  return bubble_sort(numbers) unless sorted

  numbers
end
