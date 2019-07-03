# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times  do
	Cor.create({
		nome: Faker::Color.color_name
	})
end

10.times  do
	Marca.create({
		descricao: Faker::Company.name
	})
end

10.times  do
	Classe.create({
		descricao: Faker::Music.band
	})
end

4.times  do
	Preco.create({
		valor: Faker::Number.decimal(2)
	})
end

Carro.create({placa: "WWW-1234", classe_id: 1, marca_id: 1, cor_id: 1, preco_id: 1})
Carro.create({placa: "AAA-1234", classe_id: 1, marca_id: 1, cor_id: 1, preco_id: 1})
Carro.create({placa: "BBB-1234", classe_id: 1, marca_id: 1, cor_id: 1, preco_id: 1})
Carro.create({placa: "CCC-1234", classe_id: 1, marca_id: 1, cor_id: 1, preco_id: 1})