//
//  ContentView.swift
//  Shared
//
//  Created by T on 12/12/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Binding var text: String
    let cars = ["car1", "car2", "car3", "car4", "car5"]
    var body: some View {
        VStack {
            HStack {
                Image("tesla-name-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:120, height:60)
                Spacer()
                Image("tesla-red")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:50, height:30)
            }.padding(.horizontal, 17)
            // search bar
                TextField("Search...", text: $text)
                    .padding(.horizontal, 10)
                    .padding(7)
                    .background(Color(.systemGray6))
                    .frame(width: 360, height: 40)
                    .cornerRadius(10)
            Spacer()
            
            // feed section
            ZStack {
                ScrollView(.vertical) {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack {
                                ForEach(cars, id: \.self){
                                    car in
                                    Image(car)
                                        .resizable()
                                        .frame(width:140, height:200, alignment: .center)
                                        .clipped()
                                        .aspectRatio(contentMode: .fill)
                                }

                            }.padding()
                        }
                    }
                }
            }

    }


}

// automatic preview
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                ContentView(text: .constant(""))
                    .preferredColorScheme(.light)
        }
    }
}
