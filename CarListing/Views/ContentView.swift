//
//  ContentView.swift
//  CarListing
//
//  Created by M. A. Alim Mukul on 27.09.22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:CarViewModels
    
    @State var test = ""
    
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
                                    .frame(width: 220, height: 210)
                                    .clipped()
                                    
                                VStack(alignment: .leading) {
                                    
                                    Spacer()
                                    
                                    Text(cars.make)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    
                                    Spacer()
                                    
                                    
                                    Text("$" + String(Int(cars.marketPrice)))
                                    
                                    Spacer()
                                    
                                    Text(cars.model)
                                    
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
