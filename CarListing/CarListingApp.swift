//
//  CarListingApp.swift
//  CarListing
//
//  Created by M. A. Alim Mukul on 27.09.22.
//

import SwiftUI

@main
struct CarListingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CarViewModels())
        }
    }
}
