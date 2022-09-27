//
//  ContentView.swift
//  CarListing
//
//  Created by M. A. Alim Mukul on 27.09.22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:CarViewModels
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(showsIndicators: false) {
                
                LazyVStack(alignment: .leading, spacing: 20) {
                    
                    ForEach(model.car, id: \.self) {
                        
                        cars in
                        
                        ZStack(alignment:.leading) {
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(40)
                                .shadow(radius: 5)
                                .aspectRatio(CGSize(width: 335, height: 175),contentMode: .fit)
                                
                            HStack {
                                
                                Image(cars.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 210)
                                    .clipped()
                                    
                                VStack(alignment: .leading) {
                                    
                                    Spacer()
                                    
                                    Text(cars.make)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    
                                    Text("$" + String(Int(cars.marketPrice)))
                                    
                                    Spacer()
                                    
                                    HStack {
                                        
                                        ForEach(0..<cars.rating, id: \.self) {
                                            
                                            star in
                                            
                                            Image(systemName: "star.fill")
                                        }
                                    }
                                    Spacer()
                                }
                                .padding()
                            }
                            .cornerRadius(40)
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitle("Car Listing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CarViewModels())
    }
}
