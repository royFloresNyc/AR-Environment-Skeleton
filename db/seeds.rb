Student.destroy_all;
Teacher.destroy_all;
GradeLevel.destroy_all;
Club.destroy_all;
StudentClub.destroy_all;

roy = Student.create(first_name: "Roy", last_name: "Flores", grade_level: "eleven")
tina = Student.create(first_name: "Tina", last_name: "Cooper", grade_level: "twelve")
amy = Student.create(first_name: "Amy", last_name: "Lopez", grade_level: "eleven")
jordan = Student.create(first_name: "Jordan", last_name: "Kirsch", grade_level: "twelve")
sam = Student.create(first_name: "Sam", last_name: "Dela Cruz", grade_level: "twelve")
liam = Student.create(first_name: "Liam", last_name: "Johnson", grade_level: "eleven")
jen = Student.create(first_name: "Jen", last_name: "Castillo", grade_level: "eleven")
tim = Student.create(first_name: "Tim", last_name: "Gray", grade_level: "twelve")


smith = Teacher.create(last_name: "Smith", years_of_experience: 5)
gomez = Teacher.create(last_name: "Gomez", years_of_experience: 3)
mendoza = Teacher.create(last_name: "Mendoza", years_of_experience: 5)

GradeLevel.create(student: roy, teacher:smith)
GradeLevel.create(student: tina, teacher: smith)
GradeLevel.create(student: amy, teacher: gomez)
GradeLevel.create(student: jordan, teacher: mendoza)
GradeLevel.create(student: liam, teacher: mendoza)
GradeLevel.create(student: sam, teacher: mendoza)
GradeLevel.create(student: roy, teacher: gomez)
GradeLevel.create(student: jen, teacher: smith)
GradeLevel.create(student: jen, teacher: gomez)

science_club = Club.create(name: 'Science Club', teacher_id: mendoza.id);
debate_club = Club.create(name:'Debate Club', teacher_id: smith.id);

jordan_science = StudentClub.create({student_id: jordan.id, club_id: science_club.id})
roy_science = StudentClub.create({student_id: roy.id, club_id: science_club.id})

roy_debate = StudentClub.create({student_id: roy.id, club_id: debate_club.id})
amy_debate = StudentClub.create({student_id: amy.id, club_id: debate_club.id})

