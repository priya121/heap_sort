class Heapsort 

    def heapsort(array)
        if array.size < 1 
            return array
        end
    end

    def heapify(array,i)
        array.each do |sort|
            i = (i.to_i - 1 /2).floor
            left_index  = (2*i + 1)
            right_index = (2*i + 2) 
            if left_index <= array.length - 1 && array[left_index] > array[i]
                largest = left_index
            else largest = i
            end
            if right_index <= array.length - 1 && array[i] > array[largest]
                largest = right_index
            end
            if largest != array[i]
                temp = array[i]
                array[i] = largest
                largest = temp
                heapify(array,largest)
            end
        end

    end
end


