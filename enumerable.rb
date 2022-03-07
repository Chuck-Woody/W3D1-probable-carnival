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

end


a = [1, 2, 3]
p a.my_any? { |num| num > 1 } # => true
p a.my_any? { |num| num == 4 } # => false
p a.my_all? { |num| num > 1 } # => false
p a.my_all? { |num| num < 4 } # => true
