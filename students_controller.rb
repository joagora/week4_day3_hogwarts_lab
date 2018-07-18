require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student')
require_relative('./models/house')
also_reload('./models/*')

# index
get '/students' do
  @students = Student.all
  erb :index
end
# show
get '/students/:id' do
  @student = Student.find(params['id'])
  erb :show
end
# new
get '/students/new' do
  @houses = ["Slitherin", "Ravenclaw", "Griffindor", "Hufflepuff"]
  erb :new
end
# create

# edit

# update

# destroy
