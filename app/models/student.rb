class Student < ActiveRecord::Base
    has_many :student_clubs;
    has_many :clubs, through: :student_clubs;
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

    def club_supervisors
        self.clubs.each{|c| puts "#{full_name} attends club #{c.name} supervised by #{c.teacher.last_name}"};
        self.clubs.map{|c| c.teacher};
    end
    
    def self.club_lover
        self.all.filter{|s| s.clubs.length > 1};
    end

end 