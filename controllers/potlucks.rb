# "new potluck" form
get "/potlucks/new_potluck" do
  erb :"potlucks/new_potluck"
end



# process "new potluck" form
post "/new_potluck" do
  @potluck = Potluck.new(params[:potluck])

  if @potluck.save
    redirect "/"
  else
    erb :"potlucks/new_potluck"
  end
end

# "edit potluck" form
get "/potlucks/edit_potluck" do
  erb :"potlucks/edit_potluck"
end

post "/edit_potluck/:potluck_id" do
  @potluck = Potluck.find_by_id(params[:potluck_id])
  erb :"potlucks/edit_potluck"
end

# process "edit potluck" form
get "/edit_potluck/:potluck_id" do
  @potluck = Potluck.find_by_id(params[:potluck_id])
  @items = Item.find_all_by_potluck_id(params[:potluck_id])

  erb :"potlucks/edit_potluck"
end

# post '/edit_potluck/:potluck_id' do
#   @potluck = Potluck.find_by_id(params[:potluck_id])

#   if @potluck.update_attributes(params[:potluck])
#     redirect "/"
#   else
#     erb :"potlucks/edit_potluck"
#   end
# end

# view/edit "potluck"
