RSpec.describe 'all test' do
  it 'test all zeroes' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeroes' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
      # Your code goes here
    end
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = words.all? do |word|
      word.include?("gone")
    end
    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    # Your code goes here
    all_gone = words.all? do |word|
      word.include?("there")
    end
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    all_empty = strings.all? do |string|
      string.empty?
    end
    # Your code goes here
    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    # Your code goes here
    all_empty = strings.all? do |string|
      string.empty?
    end
    expect(all_empty).to eq(false)
  end

  it 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_uppercase = words.all? do |word|
      word.upcase!
    end
    # Your code goes here
    expect(all_uppercase).to eq(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    all_lies = lies.none? do |lie|
    end
    # Your code goes here
    expect(all_lies).to eq(true)
  end

  it 'multiples of 7' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = numbers.all? do |number|
      if number % 7
        true
      end
    end

    # Your code goes here
    expect(all_multiples_of_7).to eq(true)
  end

  it 'not all three digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = numbers.all? do |number|
      if number.to_s.length == 3
        true
      end
    end
    # Your code goes here
    expect(all_3_digits).to eq(false)
  end

  it 'all four letter words' do
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = words.all? do |word|
      if word.length == 4
        true
      end
    end
    # Your code goes here
    expect(all_4_letters).to eq(true)
  end
end
