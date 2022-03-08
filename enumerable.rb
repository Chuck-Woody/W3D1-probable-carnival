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
                arr << ele     
            end

        end
        arr


    end

    def my_zip(*ele)
        arr = []
        i = 0
        while i < self.length
            sub_arr = []
            sub_arr << self[i]
            ele.my_each do |nums|
                sub_arr << nums[i]
            end
            arr << sub_arr
            i += 1
        end
        arr
    end

    def my_rotate(n = nil)
        arr = self.dup
        if n == nil
            arr << arr.shift
        elsif n < 0
            n *= -1
            n.times {arr.unshift(arr.pop)}
        else 
            n.times {arr << arr.shift}
        end
        arr
    end


    def my_join(s = nil)

        if s == nil

            self.join("")
        else
            self.join(s)

        end

    end

    def my_reverse

        self.reverse.map {|ele| ele }
    end

end





