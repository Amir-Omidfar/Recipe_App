//
//  RecipeModel.swift
//  Recipe_List
//
//  Created by Amir Ali on 6/3/23.
//

import Foundation


class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init (){
        // Create an instance of DataService and get the data
        self.recipes = DataService.getLocalData()
    }
    
}
