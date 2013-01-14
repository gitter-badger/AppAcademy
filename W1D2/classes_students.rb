class Students
  attr_accessor :name

  def initialize(first_name="John",last_name="Doe")
    @first_name = first_name
    @last_name = last_name
    @courses = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def enroll(course)
    conflict = false

    @courses.each do |enrolled_course|
      if enrolled_course.conflicts?(course)
        conflict = true
      end
    end

    if conflict == false
      @courses << course
      course.enroll(self)
    else
      puts "There's a conflict with that course."
    end
  end

  def courses
    @courses.each do |course|
      puts course.name
    end
  end

end


class Courses
  attr_accessor :course_name, :department, :num_credits

  def initialize(course_name="Stats", department="Math", num_credits="12", class_time={:mon => 1, :tue => 1, :wed => 1})
    @course_name = course_name
    @department = department
    @num_credits = num_credits
    @enrolled_students = []
    @class_time = class_time
  end

  def enroll(student)
    @enrolled_students << student
  end

  def students
    @enrolled_students.each do |student|
      puts student.name + " "
    end
  end

  def name
    @course_name
  end

  def class_time
    @class_time
  end

  def add_student(student)
    if !@enrolled_students.include?(student)
      @enrolled_students << student
    else
      puts "That student is already enrolled in that class."
    end
  end

  def conflicts?(course2)
    self.class_time.each do |k, v|
      if self.class_time[k] == course2.class_time[k]
        return true
        break
      else
        return false
      end
    end
  end

end