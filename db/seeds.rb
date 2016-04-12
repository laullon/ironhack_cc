mia = Bootcamp.create(name:"Miami April 2016")
bcn = Bootcamp.create(name:"Barcelona April 2016")

students_list = [
  [ "Kelly", "Salinas", "dsgajhdgas", "salinas@pp.com", "salinas", mia ],
    [ "Jhon", "doe", "dsgajhdgas", "doe@pp.com", "doe", bcn ],
    [ "Jane", "doe", "dsgajhdgas", "jdoe@pp.com", "jdoe", bcn ]
]

students_list.each do |name, surname, password, email, slack_username, bootcamp|
  Student.create( name: name, surname: surname, password: password, email: email, slack_username: slack_username, bootcamp_id: bootcamp.id )
    print "student -> #{name} - #{bootcamp.id}\n" 
end


exercises_list = [
  [ "HTML", mia ],
  [ "Ruby", mia ],
  [ "PHP", mia ],
  [ "Java", mia ],
  [ "HTML", bcn ],
  [ "Ruby", bcn ],
  [ "PHP", bcn ],
]

exercises_list.each do |unit, bootcamp|
  Exercise.create( unit: unit, bootcamp_id: bootcamp.id )
    print "exercise -> #{unit} - #{bootcamp.id}\n" 
end


