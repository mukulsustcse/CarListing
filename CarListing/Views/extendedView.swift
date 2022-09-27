//
//  extendedView.swift
//  CarListing
//
//  Created by M. A. Alim Mukul on 27.09.22.
//

import SwiftUI

struct extendedView: View {
    
    @EnvironmentObject var model:CarViewModels
    
    var body: some View {
        
        Text("Hello, World!")
    }
}

struct extendedView_Previews: PreviewProvider {
    static var previews: some View {
        extendedView()
            .environmentObject(CarViewModels())
    }
}
