class Club < ActiveRecord::Base
    belongs_to :teacher
    has_many :student_clubs;
    has_many :students, through: :student_clubs;
end