class StudentController < ApplicationController

  def index
      students = Student.includes(:bootcamp)
      res = Array.new
      
      students.each do |student|
          s = student.as_json
          s[:bootcamp_name] = student.bootcamp.name
          res.push(s)
      end
      
      render :json => [res]
  end
    
end
