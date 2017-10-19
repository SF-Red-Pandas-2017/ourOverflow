get '/sessions' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    login(@user)
end
