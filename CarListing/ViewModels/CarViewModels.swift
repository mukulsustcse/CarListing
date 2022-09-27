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
            let jsonData = try Data(contentsOf: jsonurl!)
            
            let jsonDecoder = JSONDecoder()
            let modules = try  jsonDecoder.decode([CarModels].self, from: jsonData)
            
            self.car = modules
            
        } catch {
            print(error)
            print("Cannot parse local data")
        }
    }
}
