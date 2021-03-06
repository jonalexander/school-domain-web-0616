require 'Pry'

class School

  attr_accessor :name
  #attr_reader

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, age)
    @roster[age] ||= []
    @roster[age] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #sorts all values and reassigns key/value pairs
    @roster.each_with_object({}) do |(grade, student_array), sorted_hash|
      sorted_hash[grade] = student_array.sort
    end
  end
end

#Pry.start

# expected:   {10=>["Jeff Baird", "Blake Johnson"]}
# expected:   {9=>["Homer Simpson"], 10=>["Jeff Baird", "Avi Flombaum"], 7=>["Blake Johnson"]}
