class School    

    attr_accessor :name, :grade, :roster, :student

    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||=[]
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade] 
    end

    def sort 
        sorted_roster = {}
        self.roster.sort.each do |grade_array|
            sorted_roster[grade_array[0]] = grade_array[1].sort
       end
       sorted_roster
    end


end