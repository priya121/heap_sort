require "heapsort"

describe '#heap_sort' do
    it 'sorts an empty array' do 
        expect(Heapsort.new.heapsort([])).to eq([])
    end
    it 'heapify builds a heap of 1' do
        expect(Heapsort.new.heapify([1],1)).to eq([1])
    end
    it 'heapify returns a reorderd array of 2' do
        expect(Heapsort.new.heapify([1,2],1)).to eq([1,2])
    end
    it 'heapify returns the index of an element in an array' do
        expect(Heapsort.new.heapify([20,1,3],1)).to eq([20,1,3])
    end
end



