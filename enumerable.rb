class Array

    def my_each(&prc)
        i = 0 
        while i < self.length
           
            prc.call(self[i]) 
            i += 1
        end
        return self
    end

    def my_select(&prc)
        arr = []
        self.my_each do |num|
            arr << num if prc.call(num)
        end
        arr
    end

    def my_reject(&prc)
        arr = []
        self.my_each do |num|
            arr << num unless prc.call(num)
        end
        arr
    end 

    def my_any?(&prc)
        i = 0 
        any = false
        while i < self.length
            return true if prc.call(self[i])
            i += 1
        end
        any
    end

    def my_all?(&prc)
        i = 0 
        any = true
        while i < self.length
            return false unless prc.call(self[i])
            i += 1
        end
        any
    end

    def my_flatten
        
        
        arr = []
        puts self
        puts "-----"
        
        self.each do |ele|
            
            if ele.instance_of?(Array)
               arr += ele.my_flatten 
            else
                puts ele
                puts "-------"
                arr << ele  
                puts "array -------"  
                puts arr      
            end

        end
        arr


    end

end
p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
