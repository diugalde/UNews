# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


articles = Article.create([ 
    {title: "El señor de los anillos 1", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "pending", user_id: 5, likes: 0, category: "mundo"},
    {title: "El señor de los anillos 2", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "pending", user_id: 5, likes: 0, category: "costa rica"}, 
    {title: "El señor de los anillos 3", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "pending", user_id: 5, likes: 0, category: "deportes"},
    {title: "El señor de los anillos 4", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "accepted", user_id: 5, likes: 0, category: "entretenimiento"},
    {title: "El señor de los anillos 5", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "accepted", user_id: 5, likes: 0, category: "tecnologia"}, 
    {title: "El señor de los anillos 6", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "accepted", user_id: 5, likes: 0, category: "ciencia"},
    {title: "El señor de los anillos 7", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "deleted", user_id: 5, likes: 0, category: "salud"},
    {title: "El señor de los anillos 8", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "rejected", user_id: 5, likes: 0, category: "negocio"}, 
    {title: "El señor de los anillos 9", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "rejected", user_id: 5, likes: 0, category: "costa rica"}])

