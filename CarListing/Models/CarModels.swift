//
//  CarModels.swift
//  CarListing
//
//  Created by M. A. Alim Mukul on 27.09.22.
//

import Foundation

struct CarModels: Decodable, Hashable {
    
    var id:Int
    var consList: [String]
    var customerPrice:Double
    var make:String
    var marketPrice:Double
    var model:String
    var prosList:[String]
    var rating:Int
    var videoURL:String
    var imageName:String
    var website:String
}
