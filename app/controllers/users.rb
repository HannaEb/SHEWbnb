class Makersbnb < Sinatra::Base

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    @user = User.create(first_name: params[:first_name],
                last_name: params[:last_name],
                username: params[:username],
                email: params[:email],
                password: params[:password],
                password_confirmation: params[:password_confirmation]
                )
      if @user.save
        session[:user_id] = @user.id
        redirect '/places'
    else
      erb :'users/new'
    end

  end

end
