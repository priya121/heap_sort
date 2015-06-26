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
    it 'heapifys an array of 5' do 
        expect(Heapsort.new.heapify([2,3,7],1)).to eq([7,3,2])
    end
    it 'builds a heap from array of 5' do
        expect(Heapsort.new.build_heap([2,3,7,9,10])).to eq([10,9,7,2,3])
    end
    it 'heapsorts an array of 10' do
       expect(Heapsort.new.build_heap([1,2,3,4,5,6,7,8,9,10])).to eq([10,9,7,8,5,6,3,1,4,2])
    end
end



