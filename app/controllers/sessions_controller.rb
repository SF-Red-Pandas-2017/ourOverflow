get '/sessions' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    login(@user)
    redirect '/questions'
  else
    @errors = ["Invalid username or password"]
    erb :'sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end
