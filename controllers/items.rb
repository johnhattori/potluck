get '/items/new_item/:potluck_id' do
    @potluck_id = params[:potluck_id]
    erb :"items/new_item"
end

post "/new_item/:potluck_id" do
  item = Item.new(params[:item])
  item.update_attributes(:potluck_id => params[:potluck_id])
  person = User.find_or_create_by_name(params[:user])
  item.update_attributes(:person_id => person.id)

  if item.save
    redirect "/"
  else
    erb :"items/new_item"
  end
end

post "/save_item/:item_id" do
  @item = Item.find_by_id(params[:item_id])

  if @item.update_attributes(params[:item])
    redirect "/"
  else
    erb :"potlucks/edit_potluck"
  end
end

get '/edit_item/:item_id' do
    erb :"items/edit_item"
end

