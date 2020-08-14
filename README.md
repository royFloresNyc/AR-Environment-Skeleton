# Active Record Practice Project

# Domain: Student-Teacher

- A Student has a first_name (string)
- A Student has a last_name (string)
- A Student has a grade_level (string), for ex: “first”, “second”, “third”, etc...
- Student#full_name should return the first and last name of the student in one string, for ex: “Ian Grubb”
- Student#grade_level should return the student’s grade level
- Student.all should return a list of all students
- Student.all_in_grade should receive an argument of a grade, ex: “first”, and return all students who are in that grade
- A Teacher has a last_name (string)
- A Teacher has a grade_level (string)
- A Teacher has a years_of_experience (integer)
- Teacher#tenure should return true if a teacher has taught more than 5 years, otherwise false

You should have a completed seeds file for testing

# Deliverables Part II

- A Student belongs to a Teacher
- Student#teacher should return the teacher that student belongs to
- Teacher#students should return a list of all the students that belong to this teacher

**Which method(s) does Active Record create for you?**
Student#first_name , Student#last_name, Student#grade_level, Student.all
Teacher#last_name, Teacher#grade_level, Teacher#years_of_experience, Teacher.all
Student#teacher, Teacher#students

**Which method(s) did you have to create yourself? Why?**
Student#full_name, Teacher#tenure?

# Deliverables Part III

- A Student has many Teachers through GradeLevel
- A Teacher has many Students through GradeLevel

You should have a complete seeds file 

**Answer the following questions:**
**What changes did you make to your app? Why?**

- removed teacher column from student table
- created a joiner table (grade_level)
- added Student#teachers that uses the joiner table (grade_level) as the source of truth
- added Teacher#studenst that uses the joiner table (grade_level) as teh source of truth
- added Teacher#grade_level_teaching that returns all the grade_levels(strings) that a teacher teaches 

# Deliverables Part IV

Students and Clubs (after-school clubs)

- A Student can have many Clubs
- A Club can have many Students
- Student#clubs returns instances of clubs a student belongs to
- Club#students returns instacnes of students that belong to the club
- Club#stents_in_grade_level returns students (instances) in a given grade level