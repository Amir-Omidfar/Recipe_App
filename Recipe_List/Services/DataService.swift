//
//  DataService.swift
//  Recipe_List
//
//  Created by Amir Ali on 6/3/23.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Recipe]{
        
        // Parse local json file
        
        // Get url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: ".json")
        
        // Check if pathString is not nil, otherwise ...
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            // Create Data Object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do{
                let recipeData = try decoder.decode([Recipe].self, from : data)
	                for r in recipeData{
                    r.id = UUID()
                    
                        for i in r.ingredients{
                            i.id = UUID()
                        }
                }
                
                return recipeData
            }
            catch{
                print(error)
            }
            
        }
        catch{
            print(error)
        }
        
        
        return [Recipe]()
    }
    
    
}
