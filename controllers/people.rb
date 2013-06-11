get "/new_person" do
  erb :"people/new_person"
end

# Process new_actor form.
post "/new_person" do
  @person = Person.new(params[:person])

  if @person.save
    redirect "/"
  else
    erb :"people/new_person"
  end
end