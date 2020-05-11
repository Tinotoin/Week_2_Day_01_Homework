class Student

  attr_accessor :student_name, :cohort


  def initialize(input_student_name, input_cohort)
    @student_name = input_student_name
    @cohort = input_cohort
  end

def student_speak
  return "Hello!"
end

def student_fave_language(language)
  return language
end

end
