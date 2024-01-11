//
//  PokemonGridView.swift
//  PokemonApp
//
//  Created by Krishna Prakash on 11/01/24.
//

import SwiftUI

struct PokemonGridView: View {
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.2), Color.pink.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    LazyVGrid(columns: gridItems, spacing: 16){
                        // parsing through all the data from api and model
                        ForEach(viewModel.pokemon) {
                            pokemon in
                            NavigationLink {
                            PokemonDetailView(viewModel: viewModel, pokemon: pokemon)
                            } label: {
                                PokeCell(pokemon: pokemon, viewModel: viewModel)
                                }

                            }
                        }
                    }.navigationTitle("Pokemon Club \(viewModel.pokemon.count)")
                }
                                 
        }.navigationBarHidden(true)
    }
}

#Preview {
    PokemonGridView()
}
