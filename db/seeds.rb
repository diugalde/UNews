# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


articles = Article.create([ 
    {title: "El señor de los anillos 1", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "pending", user_id: 5, likes: 0, category: "Mundo", link: "http://www.dieg8.com/UGraphs"},
    {title: "El señor de los anillos 2", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "pending", user_id: 5, likes: 0, category: "Costa rica"}, 
    {title: "El señor de los anillos 3", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "pending", user_id: 5, likes: 0, category: "Deportes"},
    {title: "El señor de los anillos 4", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "accepted", user_id: 5, likes: 0, category: "Entretenimiento"},
    {title: "El señor de los anillos 5", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "accepted", user_id: 5, likes: 0, category: "Tecnologia"}, 
    {title: "El señor de los anillos 6", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "accepted", user_id: 5, likes: 0, category: "Ciencia"},
    {title: "El señor de los anillos 7", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "deleted", user_id: 5, likes: 0, category: "Salud"},
    {title: "El señor de los anillos 8", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "rejected", user_id: 5, likes: 0, category: "Negocio"}, 
    {title: "El señor de los anillos 9", summary: "Encontrando un anillo místico", body: "Mejor película del 2010", state: "rejected", user_id: 5, likes: 0, category: "Costa rica"}])
    
    
    
comments = Comment.create([{article_id: 32, user_id: 1, content: "ola k ase"},
                            {article_id: 32, user_id: 3, content: "hello what are you doing"},
                            {article_id: 32, user_id: 5, content: "hola que hace"},
                            {article_id: 32, user_id: 1, content: "bonjour quest le hacende"},
                            {article_id: 33, user_id: 3, content: "Alberto pai"},
                            {article_id: 33, user_id: 5, content: "Viva la INOMBAL"},
                            {article_id: 33, user_id: 1, content: "soy elotrojames y tengo una silla"},
                            {article_id: 34, user_id: 3, content: "pollo frito"},
                            {article_id: 34, user_id: 5, content: "sandia"},
                            {article_id: 35, user_id: 1, content: "niggas"}])
