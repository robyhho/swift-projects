//
//  ContentView.swift
//  FeedMyPets
//
//  Created by Robbie Ho on 20/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State var showLoginView: Bool = false
    @State var willMoveToNextScreen = false
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Spacer()
                VStack{
                    if showLoginView {
                        homeView()
                    } else {
                        Spacer()
                        Spacer()
                        
                        Text("Welcome to FeedMyPet!")
                            .bold()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        HStack{
                            Spacer()
                            
                            Text("We'll help keep track of how hungry your pet is :)")
                                .multilineTextAlignment(.center)
                                .foregroundColor(.gray)
                            
                            Spacer()
                        
                        }

                        Spacer()
                        welcomeButtonStyleView(text: "--->")

                        Spacer()
                    }
                }
                
            }
        }

    }

}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
