require('minitest/autorun')
require('minitest/reporters')

require_relative('../classes')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Tino", "g19")
    assert_equal("Tino", student.student_name)
  end

  def test_cohort
    student = Student.new("Tino", "g19")
    assert_equal("g19", student.cohort)
  end

  def test_change_name
    student = Student.new("Tino", "g19")
    student.student_name = "Lou"
    assert_equal("Lou", student.student_name)
  end

  def test_change_cohort
    student = Student.new("Tino", "g19")
    student.cohort = "g20"
    assert_equal("g20", student.cohort)
  end

  def test_student_speak
    student = Student.new("Tino", "g19")
    assert_equal("Hello!", student.student_speak)
  end

  def test_student_fave_language
    student = Student.new("Tino", "g19")
    assert_equal("Python", student.student_fave_language("Python"))
  end

end
