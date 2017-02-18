get "/sessions/new" do
  erb :'sessions/login.html'
end

post '/login' do
  @user = User.find_by(user_name: params[:user][:user_name])
  login(@user)
  redirect "/"
end

delete '/sessions' do

  logout
  p session
    redirect "/"
end
