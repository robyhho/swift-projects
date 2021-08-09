//
//  homeVIew.swift
//  FeedMyPets
//
//  Created by Robbie Ho on 20/07/2021.
//

import SwiftUI

struct homeView: View {
    @State private var isAddAPetShowing: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                titleText(text: "Your Pets:")
                    .padding(.leading)
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    ForEach(0..<3){ i in
                            cardView(img: "img\(i)")
                        
                    }
                }
            })
            
            Spacer()
            buttonStyleView(text: "Add a pet")
            Spacer()
        }
    }
}

struct cardView: View {
    
    var img = ""
    var body: some View {
        
        VStack {
            VStack{
                Image(img).resizable()
                    .aspectRatio(contentMode: .fill)
                subTitleText(text: "12hrs till hungry")
                Rectangle()
                    .frame(width: 180, height: 5)
                    .cornerRadius(50)
            }
                
        }
        .frame(width: 200, height: 375)
        .cornerRadius(25)
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
