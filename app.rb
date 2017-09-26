require "sinatra"
require_relative "./ToDoManager.rb"


get '/todos' do 
	TodoManager.index	
end

post '/todos/:newtodo' do
	newtodo = params[:newtodo]
	TodoManager.create newtodo
	"create : #{newtodo} "
end	

get '/todos/:id' do
	id = params[:id]
	id = id.to_i
	id = TodoManager.show id
	"Show: #{id} "
end	

put "/todos/:id/:newtodo" do
	id = params[:id]
	newToDo = params[:newtodo]
	id = id.to_i
	i = TodoManager.update id,newToDo
	"update: #{id} to #{newToDo} "
end

delete '/todos/:id' do
	id = params[:id]
	id = id.to_i
	id = TodoManager.delete id
	"delete: #{id} "
end

get '/todos/new' do

end

get '/todos/:id/edit' do

end