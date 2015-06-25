class Heapsort 

    def heapsort(array)
        if array.size <= 1 
            return array
        end
    end

    def heapify(array,i)
        array.each do |sort|
            i = (i/2).floor
            left_index  = (2*i + 1)
            right_index = (2*i + 2) 
            if left_index <= array.length - 1 && array[left_index] > array[i]
                largest = left_index
            else largest = i
            end
            if right_index <= array.length - 1 && array[right_index] > array[largest]
                largest = right_index
            end
            if array[largest] != array[i]
                array[i], array[largest] = array[largest], array[i]
                heapify(array,largest)
            end
        end
    end
    
    def build_heap(array)
      array.size.downto(0) do |index|
        heapify(array,index)
      end
      array
    end

end


