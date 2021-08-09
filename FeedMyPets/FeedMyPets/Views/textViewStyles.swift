//
//  textViewStyles.swift
//  FeedMyPets
//
//  Created by Robbie Ho on 20/07/2021.
//

import SwiftUI

struct titleText: View {
    var text: String = ""
    var body: some View {
        Text(text)
            .bold()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct subTitleText: View {
    var text: String = ""
    var body: some View {
        Text(text)
            .bold()
            .font(.title3)
    }
}


struct textViewStyles_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            titleText(text: "Hi")
            subTitleText(text: "Hi")
        }
    }
}
