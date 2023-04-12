# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users

alice = User.create!(
  email: 'alice@email.com',
  password: 'password'
)

bob = User.create!(
  email: 'bob@email.com',
  password: 'password'
)

# Alice's Limericks

Limerick.create!(
  title: 'There was an old man of Nantucket',
  limerick_text: "There was an old man of Nantucket\nWho kept all his cash in a bucket;\nBut his daughter, named Nan\nRan away with a man—\nAnd as far as the bucket, Nantucket.",
  author: alice
)

Limerick.create!(
  title: 'A certain young fellow named Bee-Bee',
  limerick_text: "A certain young fellow named Bee-Bee\nWished to wed a woman named Phoebe.\n\"But,\" he said, \"I must see\nWhat the clerical fee\nBe before Phoebe be Phoebe Bee-Bee.\"",
  author: alice
)

Limerick.create!(
  title: 'There once was a fly on the wall',
  limerick_text: "There once was a fly on the wall\nI wonder why didn't it fall\nBecause its feet stuck\nOr was it just luck\nOr does gravity miss things so small?",
  author: alice
)

# Bob's Limericks

Limerick.create!(
  title: 'There once was a farmer from Leeds',
  limerick_text: "There once was a farmer from Leeds,\nWho swallowed a packet of seeds.\nIt soon came to pass,\nHe was covered with grass,\nBut has all the tomatoes he needs.",
  author: bob
)

Limerick.create!(
  title: 'A canner, exceedingly canny',
  limerick_text: "A canner, exceedingly canny\nOne morning remarked to his granny,\n\"A canner can can\nAnything that he can;\nBut a canner can't can a can, can he?\"",
  author: bob
)

Limerick.create!(
  title: 'There was a young man from Dealing',
  limerick_text: "There was a young man from Dealing\nWho caught the bus for Ealing.\nIt said on the door\n\"Don't spit on the floor\"\nSo he jumped up and spat on the ceiling",
  author: bob
)
