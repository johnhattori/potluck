get '/items/new_item/:potluck_id' do
    @potluck_id = params[:potluck_id]
    @tag_id = params[:tag_id]

    erb :"items/new_item"

end

post "/new_item/:potluck_id" do

  person = Person.find_or_create_by_name(params[:item][:person])

  params[:item][:person] = person
  item = Item.new(params[:item])


  if item.save
    item.update_attribute(:potluck_id, params[:potluck_id])
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




