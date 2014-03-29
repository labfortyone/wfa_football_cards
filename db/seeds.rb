# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_players = TypePlayer.create([{name: 'Striker'}, {name: 'Defender'}, {name: 'GoalKeeper'}, {name: 'Substitute'}, {name: 'All'}])

attributes = Attribute.create([{name: 'Shooting'}, {name: 'Passing'}, {name: 'Ball Manipulation'}, {name: 'Dribbling'}, {name: 'Tackling'}, {name: 'Running'}, {name: 'Positioning'}])

User.create(id: 1, email: 'f@b.com', encrypted_password: '$2a$10$TvDcLaSU.7H9fEIXjAPChOaiCde9AOkYvIa84Q8kosrU6mLGv52WK')

Team.create(user_id: 1, team_name: 'Bread Makers', coach_name: 'Fernando', age: '27')