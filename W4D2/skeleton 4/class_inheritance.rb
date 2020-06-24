class Employee

    attr_reader :name, :title, :salary, :boss
    
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        boss
    end

    def bonus()
        bonus = self.salary * multiplier
    end

    def boss=(boss)
        boss.employees << self
    end
    
end


class Manager < Employee

    def initialize
        super
        @employees = []
    end

    def bonus(multiplier)
        total = 0
        @employees.each do |employee|
            total += employee.salary 
        end
        total * multiplier
    end

end
#def bonus(multiplier)
   # self.salary * multiplier
  #end

