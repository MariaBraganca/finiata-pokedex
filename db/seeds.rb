require 'json'
require 'open-uri'

ids = [*(1..10)]

ids.each do |id|
  url = "https://pokeapi.co/api/v2/pokemon/#{id}/"
  url_serialized = URI.open(url).read
  pokemon = JSON.parse(url_serialized)

  Pokemon.create(
                name: pokemon["name"],
                img: "https://img.pokemondb.net/artwork/large/#{pokemon['name']}.jpg",
                url: "https://pokeapi.co/api/v2/pokemon/#{pokemon['id']}/",
                height: pokemon["height"],
                weight: pokemon["weight"],
                species: pokemon["species"]["name"],
                abilities: pokemon["abilities"].map{|i| i["ability"]["name"]}
                )
  puts "Pokemon: #{pokemon["name"]} created"
end
