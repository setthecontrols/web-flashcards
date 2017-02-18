# get '/rounds/:round_id/last' do
# 	@round = Round.find(params[:round_id])
# 	@last_card = @round.deck.cards.last
# 	@previous_user_answer = params[:answer]

# 	if @previous_user_answer == @last_card.answer
# 		Guess.create( selection: "True", card_id: @last_card.id, user_id: @round.user.id, round_id: @round.id)
# 	else
# 		Guess.create( selection: "False", card_id: @last_card.id, user_id: @round.user.id, round_id: @round.id)
# 	end

# 	@correct_count = Guess.where(selection: "True", round_id: @round.id).length
# 	@wrong_count = Guess.where(selection: "False", round_id: @round.id).length

# 	erb :'cards/last'
# end