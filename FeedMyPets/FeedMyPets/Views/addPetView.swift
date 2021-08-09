//
//  addPetView.swift
//  FeedMyPets
//
//  Created by Robbie Ho on 20/07/2021.
//

import SwiftUI

struct addPetView: View {
    @State private var petName: String = ""
    
    var body: some View {
        VStack{
            Spacer()
            titleText(text: "Tell me about you're pet")
            Spacer()
            
            Text("What's your pet's name?")
                .multilineTextAlignment(.leading)
            TextField("Please enter here",
                      text: $petName)
                .foregroundColor(Color.black)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            ZStack {
                Rectangle()
                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                    .foregroundColor(.orange)
                    .shadow(radius: 50)
                    

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add a meal time")
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                })
            }
            Spacer()
        }
    }
}

struct addPetView_Previews: PreviewProvider {
    static var previews: some View {
        addPetView()
    }
}
