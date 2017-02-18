get '/users/:id/decks' do 
	@user = User.find(params[:id])
	@decks = Deck.all
	erb :'decks/index'
end

get '/users/:id/decks/:deck_id' do 
	@user = User.find(params[:id])
	@deck = Deck.find(params[:deck_id])
	@round = Round.create(user_id: @user.id, deck_id: @deck.id)

	redirect "/rounds/#{@round.id}/cards/#{@round.deck.cards.first.id}"
end