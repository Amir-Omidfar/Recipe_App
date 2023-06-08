//
//  Recipe_ListApp.swift
//  Recipe_List
//
//  Created by Amir Ali on 6/3/23.
//

import SwiftUI

@main
struct Recipe_ListApp: App {
    
    @ObservedObject var model = RecipeModel()
    var body: some Scene {
        WindowGroup {
            RecipeTabView()
        }
    }
}
