get '/rounds/:round_id/cards/last' do
	@round = Round.find(params[:round_id])
	@last_card = @round.deck.cards.last
	@previous_user_answer = params[:answer]

	if @previous_user_answer.upcase == @last_card.answer.upcase
		Guess.create( selection: "True", card_id: @last_card.id, user_id: @round.user.id, round_id: @round.id)
	else
		Guess.create( selection: "False", card_id: @last_card.id, user_id: @round.user.id, round_id: @round.id)
	end

	@correct_count = Guess.where(selection: "True", round_id: @round.id).length
	@wrong_count = Guess.where(selection: "False", round_id: @round.id).length

	erb :'cards/last'
end


get '/rounds/:round_id/cards/:id' do
	@round = Round.find(params[:round_id])
	@card = @round.deck.cards.find(params[:id])

	@previous_card = nil
	@last_card = @round.deck.cards.where([ "id > ?",@card.id]).last
	@previous_card = @round.deck.cards.where([ "id < ?",@card.id]).last if @card.id > @round.deck.cards.first.id

	if @card.id > @round.deck.cards.first.id
		@previous_user_answer = params[:answer]
		if @previous_user_answer.upcase == @previous_card.answer.upcase
			Guess.create( selection: "True", card_id: @card.id, user_id: @round.user.id, round_id: @round.id)
		else
			Guess.create( selection: "False", card_id: @card.id, user_id: @round.user.id, round_id: @round.id)
		end
	end

	@correct_count = Guess.where(selection: "True", round_id: @round.id).length
	@wrong_count = Guess.where(selection: "False", round_id: @round.id).length

	erb :'cards/show'
end
