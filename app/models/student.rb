class Student < ActiveRecord::Base
    belongs_to :bootcamp, :class_name => "Bootcamp", :foreign_key => "bootcamp_id"
end
