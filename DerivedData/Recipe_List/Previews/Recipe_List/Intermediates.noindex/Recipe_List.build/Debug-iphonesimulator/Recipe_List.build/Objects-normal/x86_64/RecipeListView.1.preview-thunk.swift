@_private(sourceFile: "RecipeListView.swift") import Recipe_List
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/Recipe_List/Recipe_List/Views/RecipeListView.swift", line: 38)
        RecipeListView()
    
#sourceLocation()
    }
}

extension RecipeListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/Recipe_List/Recipe_List/Views/RecipeListView.swift", line: 14)
        NavigationView{
            List(model.recipes){r in
                NavigationLink {
                    RecipeDetailView(recipe: r)
                } label: {
                    HStack(spacing: __designTimeFloat("#4725.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: 20.0)){
                        Image(r.image).resizable()
                            .scaledToFill()
                            .frame(width: __designTimeInteger("#4725.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#4725.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50), alignment: .center)
                            .clipped()
                            .cornerRadius(__designTimeInteger("#4725.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
                        Text(r.name)
                    }
                }

                
                
            }.navigationBarTitle(__designTimeString("#4725.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "All Recipes"))
        }
    
#sourceLocation()
    }
}

import struct Recipe_List.RecipeListView
import struct Recipe_List.ContentView_Previews

