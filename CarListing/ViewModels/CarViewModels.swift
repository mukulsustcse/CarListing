//
//  CarViewModels.swift
//  CarListing
//
//  Created by M. A. Alim Mukul on 27.09.22.
//

import Foundation

class CarViewModels: ObservableObject, Identifiable {
    
    @Published var car = [CarModels]()
    
    init() {
        
        let jsonurl = Bundle.main.url(forResource: "car_list", withExtension: "json")
        
        do {
            // read the file into a data object
            let jsonData = try Data(contentsOf: jsonurl!)
            
            let jsonDecoder = JSONDecoder()
            let modules = try  jsonDecoder.decode([CarModels].self, from: jsonData)
            
            // assign parsed modules to modules property
            self.car = modules
            
        } catch {
            //            print(error)
            print("Cannot parse local data")
        }
    }
}
