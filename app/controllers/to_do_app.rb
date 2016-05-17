class ToDoApp < Sinatra::Base

  post '/item' do
    item = Item.new(params[:item])
    if item.save
      status = 200
      body = "Item created"
    else
      status = 400
      body = item.errors.full_messages.join(", ")
    end
  end




end
