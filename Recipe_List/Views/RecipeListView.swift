//
//  ContentView.swift
//  Recipe_List
//
//  Created by Amir Ali on 6/3/23.
//

import SwiftUI

struct RecipeListView: View {
    //Reference ViewModel
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        NavigationView{
            List(model.recipes){r in
                NavigationLink {
                    RecipeDetailView(recipe: r)
                } label: {
                    HStack(spacing: 20.0){
                        Image(r.image).resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(10)
                        Text(r.name)
                    }
                }

                
                
            }.navigationBarTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
