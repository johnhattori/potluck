get "/tags/new_tag" do
  @tags = Tag.all

 erb :"tags/new_tag"
end


post "/create_tag" do
  @tag = Tag.new(params[:tag])

  if @tag.save
    redirect "/"
  else
    erb :"tags/new_tag"
  end
end


