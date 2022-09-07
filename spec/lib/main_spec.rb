require './spec/spec_helper'

describe 'lib/main' do
  describe 'bubble_sort' do
    let(:blank_array) { [] }
    let(:unsorted) { [17, 3, 6, 9, 15, 8, 321, 34, 534, 123, 3423, 1, 323, 0, 0, 0, 6, 1, 10] }
    let(:sorted) { unsorted.sort }

    it 'returns an array with min value at the start' do
      expect(bubble_sort(unsorted)[0]).to eq(unsorted.min)
    end

    it 'returns an array with max value at the end' do
      expect(bubble_sort(unsorted)[-1]).to eq(unsorted.max)
    end

    it 'returns a sorted array' do
      expect(bubble_sort(unsorted)).to eq(sorted)
    end

    it 'returns [] when inputs []' do
      expect(bubble_sort(blank_array)).to eq([])
    end
  end
end
