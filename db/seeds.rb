random_deck = Deck.create({title: "Random Facts"})

Card.create(question: "what's good?", answer: "good", deck_id: 1)
Card.create(question: "what's bad?", answer: "bad", deck_id: 1)
Card.create(question: "what's up?", answer: "up", deck_id: 1)



# random_cards = [
#   { :question => "True or False. A shrimp's heart is in its head.",
#     :answer => "True",
#     :deck_id => random_deck.id},

#   { :question => "True or False. A horse can vomit.",
#     :answer => "False",
#     :deck_id => random_deck.id},

#   { :question => "What came first? The lighter or the match?",
#     :answer => "Lighter",
#     :deck_id => random_deck.id},

#   { :question => "How long does a pig's orgasm last?",
#     :answer => "30 minutes",
#     :deck_id => random_deck.id},

#   { :question => "In which country is it legal to marry a dead person?",
#     :answer => "France",
#     :deck_id => random_deck.id},

#   { :question => "In which country is it against the law to have a pet dog?",
#     :answer => "Iceland",
#     :deck_id => random_deck.id},

#   { :question => "What animal do human birth control pills work on?",
#     :answer => "Gorillas",
#     :deck_id => random_deck.id},

#   { :question => "On average, how many newborns are given to the wrong parents daily?",
#     :answer => "12",
#     :deck_id => random_deck.id},

#   { :question => "How many testicles did Adolf Hitler have?",
#     :answer => "1",
#     :deck_id => random_deck.id}]

# Card.create!(random_cards)
