# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@word = Word.new
@word.name = 'Hello world!'
@word.alphabet = 'helloworld'
@word.reading = 'ハローワールド'
@word.mean = 'プログラマー最初の課題'
@word.save

@word = Word.new
@word.name = 'hoge'
@word.alphabet = 'hoge'
@word.reading = 'ホゲ'
@word.mean = '適当な変数名'
@word.save
