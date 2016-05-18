class ToDoApp < Sinatra::Base

  post '/items' do
    item = Item.new(params[:item])
    if item.save
      response.status = 200
      response.body = "Item created"
    else
      response.status = 400
      response.body = item.errors.full_messages.join(", ")
    end
  end

  get '/items' do
    response.body = Item.all.to_json
    response.status = 200
  end




end
