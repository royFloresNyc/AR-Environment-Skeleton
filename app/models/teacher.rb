class Teacher < ActiveRecord::Base
    has_many :students, through: :grade_levels

    def tenure?
        self.years_of_experience > 5
    end 

    def students
        GradeLevel.all.filter {|grade_level| grade_level.teacher == self}.map{|grade_level| grade_level.student}
    end 

    def grade_level_teaching
        self.students.map { |student| student.grade_level }.uniq
    end 
end 