# Deck.create({title: "Random Facts"})

User.create(name:123,user_name:123, hashed_password:"$2a$10$Ec7GWgp2u0jL/sGwpfnOn.otKB6CvZw5BoOsi3arSwfgRfo/nSf4q")


random_deck = Deck.create({title: "Random Facts"})
random_cards = [
  { :question => "True or False. A shrimp's heart is in its head.",
    :answer => "True",
    :deck_id => random_deck.id},

  { :question => "True or False. A horse can vomit.",
    :answer => "False",
    :deck_id => random_deck.id},

  { :question => "What came first? The lighter or the match?",
    :answer => "Lighter",
    :deck_id => random_deck.id},

  { :question => "How long does a pig's orgasm last?",
    :answer => "30 minutes",
    :deck_id => random_deck.id},

  { :question => "In which country is it legal to marry a dead person?",
    :answer => "France",
    :deck_id => random_deck.id},

  { :question => "In which country is it against the law to have a pet dog?",
    :answer => "Iceland",
    :deck_id => random_deck.id},

  { :question => "What animal do human birth control pills work on?",
    :answer => "Gorillas",
    :deck_id => random_deck.id},

  { :question => "On average, how many newborns are given to the wrong parents daily?",
    :answer => "12",
    :deck_id => random_deck.id},

  { :question => "A flock of crows is known as a ______?",
    :answer => "murder",
    :deck_id => random_deck.id},

  { :question => "How many testicles did Adolf Hitler have?",
    :answer => "1",
    :deck_id => random_deck.id}]
Card.create!(random_cards)



arithmetic = Deck.create({title: "Arithmetic"})
arithmetic_cards = [
  { :question => "12 x 82 = ?",
    :answer => "984",
    :deck_id => arithmetic.id},

  { :question => "3 x 54 = ?",
    :answer => "162",
    :deck_id => arithmetic.id},

  { :question => "9 x 24 = ?",
    :answer => "216",
    :deck_id => arithmetic.id},

  { :question => "12 x 19 = ?",
    :answer => "228",
    :deck_id => arithmetic.id},

  { :question => "17 / 2 + 8 = ?",
    :answer => "16.5",
    :deck_id => arithmetic.id}, 

  { :question => "340 + 455",
    :answer => "795",
    :deck_id => arithmetic.id}]

Card.create!(arithmetic_cards)