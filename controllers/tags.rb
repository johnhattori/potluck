# process "new potluck" form
post "/save_tag/<%= @tag.id %>" do
  @tag = Tag.new(params[:tag])

  if @tag.save
    redirect "/"
  else
    erb :"tags/new_tag"
  end
end

# "edit potluck" form
get "/edit_tag/:tag_id" do
  @tag = Tag.find_by_id(params[:tag_id])
  erb :"tags/new_tag"
end

# process "edit potluck" form
post '/edit_tag/:tag_id' do
  @tag = Tag.find_by_id(params[:tag_id])

  if @tag.update_attributes(params[:tag])
    redirect "/"
  else
    erb :"tags/new_tag"
  end
end

