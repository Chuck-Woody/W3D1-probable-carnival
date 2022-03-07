class Array

    def my_each(&prc)
        i = 0 
        while i < self.length

            self[i]
        end
            self
    end


    def my_select(&prc)

        self.my_each(&prc)
    end
end

#my_select tests
# a = [1, 2, 3]
# a.my_select { |num| num > 1 } # => [2, 3]
# a.my_select { |num| num == 4 } # => []

#my_each
return_value = [1, 2, 3].my_each do |num|
    puts num
   end.my_each do |num|
    puts num
   end
#    # => 1
#        2
#        3
#        1
#        2
#        3
   
   p return_value  # => [1, 2, 3]