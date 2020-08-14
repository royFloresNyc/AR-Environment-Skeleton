class Club < ActiveRecord::Base
    belongs_to :teacher
    has_many :student_clubs;
    has_many :students, through: :student_clubs;

    def students_in_grade_level(grade_level_string)
        self.students.filter{|s| s.grade_level == grade_level_string};
    end
end