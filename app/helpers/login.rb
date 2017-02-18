def login(user)
  if user.password == params[:user][:hashed_password]
    session[:user_id] = user.id
    p session
  else
    redirect_to home_url
  end
end

def logout
  session.clear
end
