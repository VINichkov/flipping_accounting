# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
City.find_or_create_by(name: 'Омск')
City.find_or_create_by(name: 'Москва')
ProjectType.find_or_create_by(name: 'Новостройка')
ProjectType.find_or_create_by(name: 'Старый фонд до 2010. 9 этажей')
ProjectType.find_or_create_by(name: 'Старый фонд после 2010')
ProjectType.find_or_create_by(name: 'Не выбран')