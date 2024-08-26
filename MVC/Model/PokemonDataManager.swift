
//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Carlos Ignacio Padilla Herrera
//  and Sebastián Verastegui
//

import Foundation

class PokemonDataManager {
    
    // The team of champions, waiting to be assembled
    private var pokemons : [Pokemon] = []
    
    // The ultimate collection of Kanto legends
    let pokemonsArray = [
        ["image":"0", "name": "Missigno"], // The glitch that started it all
        ["image":"1", "name": "Bulbasaur"],
        ["image":"2", "name": "Ivysaur"],
        ["image":"3", "name": "Venusaur"],
        ["image":"4", "name": "Charmander"],
        ["image":"5", "name": "Charmeleon"],
        ["image":"6", "name": "Charizard"],
        ["image":"7", "name": "Squirtle"],
        ["image":"8", "name": "Wartortle"],
        ["image":"9", "name": "Blastoise"],
        ["image":"10", "name": "Caterpie"],
        ["image":"11", "name": "Metapod"],
        ["image":"12", "name": "Butterfree"],
        ["image":"13", "name": "Weedle"],
        ["image":"14", "name": "Kakuna"],
        ["image":"15", "name": "Beedrill"],
        ["image":"16", "name": "Pidgey"],
        ["image":"17", "name": "Pidgeotto"],
        ["image":"18", "name": "Pidgeot"],
        ["image":"19", "name": "Rattata"],
        ["image":"20", "name": "Raticate"],
        ["image":"21", "name": "Spearow"],
        ["image":"22", "name": "Fearow"],
        ["image":"23", "name": "Ekans"],
        ["image":"24", "name": "Arbok"],
        ["image":"25", "name": "Pikachu"],
        ["image":"26", "name": "Raichu"],
        ["image":"27", "name": "Sandshrew"],
        ["image":"28", "name": "Sandslash"],
        ["image":"29", "name": "Nidoran♀"],
        ["image":"30", "name": "Nidorina"],
        ["image":"31", "name": "Nidoqueen"],
        ["image":"32", "name": "Nidoran♂"],
        ["image":"33", "name": "Nidorino"],
        ["image":"34", "name": "Nidoking"],
        ["image":"35", "name": "Clefairy"],
        ["image":"36", "name": "Clefable"],
        ["image":"37", "name": "Vulpix"],
        ["image":"38", "name": "Ninetales"],
        ["image":"39", "name": "Jigglypuff"],
        ["image":"40", "name": "Wigglytuff"],
        ["image":"41", "name": "Zubat"],
        ["image":"42", "name": "Golbat"],
        ["image":"43", "name": "Oddish"],
        ["image":"44", "name": "Gloom"],
        ["image":"45", "name": "Vileplume"],
        ["image":"46", "name": "Paras"],
        ["image":"47", "name": "Parasect"],
        ["image":"48", "name": "Venonat"],
        ["image":"49", "name": "Venomoth"],
        ["image":"50", "name": "Diglett"],
        ["image":"51", "name": "Dugtrio"],
        ["image":"52", "name": "Meowth"],
        ["image":"53", "name": "Persian"],
        ["image":"54", "name": "Psyduck"],
        ["image":"55", "name": "Golduck"],
        ["image":"56", "name": "Mankey"],
        ["image":"57", "name": "Primeape"],
        ["image":"58", "name": "Growlithe"],
        ["image":"59", "name": "Arcanine"],
        ["image":"60", "name": "Poliwag"],
        ["image":"61", "name": "Poliwhirl"],
        ["image":"62", "name": "Poliwrath"],
        ["image":"63", "name": "Abra"],
        ["image":"64", "name": "Kadabra"],
        ["image":"65", "name": "Alakazam"],
        ["image":"66", "name": "Machop"],
        ["image":"67", "name": "Machoke"],
        ["image":"68", "name": "Machamp"],
        ["image":"69", "name": "Bellsprout"],
        ["image":"70", "name": "Weepinbell"],
        ["image":"71", "name": "Victreebel"],
        ["image":"72", "name": "Tentacool"],
        ["image":"73", "name": "Tentacruel"],
        ["image":"74", "name": "Geodude"],
        ["image":"75", "name": "Graveler"],
        ["image":"76", "name": "Golem"],
        ["image":"77", "name": "Ponyta"],
        ["image":"78", "name": "Rapidash"],
        ["image":"79", "name": "Slowpoke"],
        ["image":"80", "name": "Slowbro"],
        ["image":"81", "name": "Magnemite"],
        ["image":"82", "name": "Magneton"],
        ["image":"83", "name": "Farfetch'd"],
        ["image":"84", "name": "Doduo"],
        ["image":"85", "name": "Dodrio"],
        ["image":"86", "name": "Seel"],
        ["image":"87", "name": "Dewgong"],
        ["image":"88", "name": "Grimer"],
        ["image":"89", "name": "Muk"],
        ["image":"90", "name": "Shellder"],
        ["image":"91", "name": "Cloyster"],
        ["image":"92", "name": "Gastly"],
        ["image":"93", "name": "Haunter"],
        ["image":"94", "name": "Gengar"],
        ["image":"95", "name": "Onix"],
        ["image":"96", "name": "Drowzee"],
        ["image":"97", "name": "Hypno"],
        ["image":"98", "name": "Krabby"],
        ["image":"99", "name": "Kingler"],
        ["image":"100", "name": "Voltorb"],
        ["image":"101", "name": "Electrode"],
        ["image":"102", "name": "Exeggcute"],
        ["image":"103", "name": "Exeggutor"],
        ["image":"104", "name": "Cubone"],
        ["image":"105", "name": "Marowak"],
        ["image":"106", "name": "Hitmonlee"],
        ["image":"107", "name": "Hitmonchan"],
        ["image":"108", "name": "Lickitung"],
        ["image":"109", "name": "Koffing"],
        ["image":"110", "name": "Weezing"],
        ["image":"111", "name": "Rhyhorn"],
        ["image":"112", "name": "Rhydon"],
        ["image":"113", "name": "Chansey"],
        ["image":"114", "name": "Tangela"],
        ["image":"115", "name": "Kangaskhan"],
        ["image":"116", "name": "Horsea"],
        ["image":"117", "name": "Seadra"],
        ["image":"118", "name": "Goldeen"],
        ["image":"119", "name": "Seaking"],
        ["image":"120", "name": "Staryu"],
        ["image":"121", "name": "Starmie"],
        ["image":"122", "name": "Mr. Mime"],
        ["image":"123", "name": "Scyther"],
        ["image":"124", "name": "Jynx"],
        ["image":"125", "name": "Electabuzz"],
        ["image":"126", "name": "Magmar"],
        ["image":"127", "name": "Pinsir"],
        ["image":"128", "name": "Tauros"],
        ["image":"129", "name": "Magikarp"],
        ["image":"130", "name": "Gyarados"],
        ["image":"131", "name": "Lapras"],
        ["image":"132", "name": "Ditto"],
        ["image":"133", "name": "Eevee"],
        ["image":"134", "name": "Vaporeon"],
        ["image":"135", "name": "Jolteon"],
        ["image":"136", "name": "Flareon"],
        ["image":"137", "name": "Porygon"],
        ["image":"138", "name": "Omanyte"],
        ["image":"139", "name": "Omastar"],
        ["image":"140", "name": "Kabuto"],
        ["image":"141", "name": "Kabutops"],
        ["image":"142", "name": "Aerodactyl"],
        ["image":"143", "name": "Snorlax"],
        ["image":"144", "name": "Articuno"],
        ["image":"145", "name": "Zapdos"],
        ["image":"146", "name": "Moltres"],
        ["image":"147", "name": "Dratini"],
        ["image":"148", "name": "Dragonair"],
        ["image":"149", "name": "Dragonite"],
        ["image":"150", "name": "Mewtwo"],
        ["image":"151", "name": "Mew"]
    ]
    
    // Assemble the squad from the legendary database
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    // Retrieve a Pokémon by its legendary index
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    // Count the champions in your collection
    func countPokemons() -> Int {
        pokemons.count
    }
}
