require "heapsort"

describe '#heap_sort' do
   it 'sorts an empty array' do 
        expect(Heapsort.new.heapsort([])).to eq([])
    end
    it 'heapify builds a heap of 1' do
        expect(Heapsort.new.heapsort([1])).to eq([1])
    end
    it 'heapify returns a reorderd array of 3' do
        expect(Heapsort.new.heapify([1,2,3],1)).to eq([3,2,1])
    end
    it 'heapify returns an ordered  array' do
        expect(Heapsort.new.heapify([1,3,20],1)).to eq([20,3,1])
    end
end



