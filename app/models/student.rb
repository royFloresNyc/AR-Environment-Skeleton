class Student < ActiveRecord::Base
    has_many :teachers, through: :grade_levels

    def full_name
        "#{self.first_name} #{self.last_name}"
    end 

    def self.all_in_grade(grade)#expecting a string as argument
        all.filter{ |student| student.grade_level == grade}
    end 

    def teachers
        GradeLevel.all.filter { |grade_level| grade_level.student == self}.map{ |grade_level| grade_level.teacher }
    end 

end 