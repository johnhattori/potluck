get "/new_user" do
  erb :"users/new_user"
end

# Process new_actor form.
post "/new_user" do
  @user = User.new(params[:user])

  if @user.save
    redirect "/"
  else
    erb :"users/new_user"
  end
end