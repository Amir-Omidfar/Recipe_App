@_private(sourceFile: "RecipeDetailView.swift") import Recipe_List
import SwiftUI
import SwiftUI

extension RecipeDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/Recipe_List/Recipe_List/Views/RecipeDetailView.swift", line: 57)
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[__designTimeInteger("#7179.[2].[0].property.[0].[1].arg[0].value.[0].value", fallback: 0)])
    
#sourceLocation()
    }
}

extension RecipeDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/Recipe_List/Recipe_List/Views/RecipeDetailView.swift", line: 14)
        ScrollView{
            VStack(alignment: .leading){
                //MARK: Title
                //Text(recipe.name).font(.title)
                
                
                // MARK: Recipe Image
                Image(recipe.image).resizable().scaledToFill()
                
                // MARK: Ingredients
                VStack(alignment: .leading){
                    
                    Text(__designTimeString("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "Ingredients"))
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding([.bottom,.top],__designTimeInteger("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[1].value", fallback: 5))
                    ForEach(recipe.ingredients){item in
                        Text(__designTimeString("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].arg[1].value.[0].arg[0].value.[0]", fallback: "- ") + item.name).padding(.bottom,__designTimeFloat("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[1].arg[1].value.[0].modifier[0].arg[1].value", fallback: 0.1))
                    }
                }.padding(.horizontal)
                
                //MARK: Divider
                Divider()
                
                // MARK: Directions
                VStack(alignment: .leading){
                    
                    Text(__designTimeString("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "Directions"))
                        .font(.headline)
                        .padding(.bottom,__designTimeInteger("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].modifier[1].arg[1].value", fallback: 5))
                    ForEach(__designTimeInteger("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].arg[0].value.[0]", fallback: 0)..<recipe.directions.count, id: \.self){index in
                        Text(String(index+__designTimeInteger("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].arg[2].value.[0].arg[0].value.[0]", fallback: 1))+__designTimeString("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].arg[2].value.[0].arg[0].value.[1]", fallback: ". ")+recipe.directions[index]).padding(.bottom,__designTimeFloat("#7179.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].arg[2].value.[0].modifier[0].arg[1].value", fallback: 0.1))
                    }
                }.padding(.horizontal)
            }
            
            
        }.navigationBarTitle(recipe.name)
    
#sourceLocation()
    }
}

import struct Recipe_List.RecipeDetailView
import struct Recipe_List.RecipeDetailView_Previews

