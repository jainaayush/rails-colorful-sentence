# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sentence1 = Sentence.create(
  description: 'Apple is looking at buying U.K. startup for $1billion'
)

Entity.create(
  text:'Apple',
  text_type: 'ORG',
  sentence_id: sentence1.id
)

Entity.create(
  text:'U.K.',
  text_type: 'GPE',
  sentence_id: sentence1.id
)

Entity.create(
  text:'$1billion',
  text_type: 'MONEY',
  sentence_id: sentence1.id
)

sentence2 = Sentence.create(
  description: 'Regional_funds with exposure to United_States and outperform equity_market over 3year'
)

Entity.create(
  text:'Regional_funds',
  text_type: 'THEME',
  sentence_id: sentence2.id
)

Entity.create(
  text:'United_States',
  text_type: 'GPE',
  sentence_id: sentence2.id
)

Entity.create(
  text:'equity_market',
  text_type: 'THEME',
  sentence_id: sentence2.id
)

Entity.create(
  text:'3year',
  text_type: 'TIME',
  sentence_id: sentence2.id
)
