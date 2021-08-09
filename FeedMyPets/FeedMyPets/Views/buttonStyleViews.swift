//
//  buttonStyleViews.swift
//  FeedMyPets
//
//  Created by Robbie Ho on 20/07/2021.
//

import SwiftUI

struct welcomeButtonStyleView: View {
    var text: String = ""
    //Destination needs to be included
    var destination: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .cornerRadius(50)
                .foregroundColor(.orange)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text(text)
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                    
                
            })
            
        }
    }
}

struct buttonStyleView: View {
    var text: String = ""
    var stateVariable: Bool = false
    //Destination needs to be included
    var whichView: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 100, height: 50)
                .cornerRadius(50)
                .foregroundColor(.orange)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Button(action: {stateVariable == true},
                label: {
                Text(text)
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                
                
            })
            
        }
    }
}

struct buttonStyleViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            welcomeButtonStyleView(text: "welcome")
            buttonStyleView(text: "Tester", stateVariable: false)
        }
    }
}
