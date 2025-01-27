//
//  ContentView.swift
//  Adding imageslesson8
//
//  Created by natural health on 1/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var photoName = ""
    @State private var photoNumber = 0
    
    var body: some View {
        VStack {
            Spacer()
            Image(photoName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .shadow(radius: 50)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Spacer()
            
            Button("Show Message!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                
                message = ( message == message1 ? message2 :message1)
//                imageName = ( imageName == "photo4" ? "photo6" : "photo4")
//                TODO: -UPDATE THE imageName variable- done below *the function below help with flipping the pictures you cant mixt Integer with String in Swift
                photoName = "photo\(photoNumber)"
//                photoNumber = photoNumber + 1
                photoNumber += 1
                if photoNumber > 9 {
                    photoNumber = 0
                }
//        print(photoNumber) do not show on content view only in console
                
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        
        .padding()
        
    }
}
    
    #Preview {
        ContentView()
    }

//  example of numbers and doubles
//let milesRun: Double = 3 or can be written such as let milesRun =3.0
//let kmPerMile = 1.609
//let kmRun = milesRun * kmPerMile
//print(kmRun) or let kmRun = Double(milesRun) * kmPerMiles

