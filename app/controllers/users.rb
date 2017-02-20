get '/users' do
  erb :'users/users_test.html'
end

get '/users/new' do
  erb :'users/users.html'
end

post '/users' do
  p params[:user]
  @user = User.new(params[:user])
  @user.password = params[:user][:hashed_password]
  @user.save
  p @user
  login(@user)
  redirect '/users'
end
