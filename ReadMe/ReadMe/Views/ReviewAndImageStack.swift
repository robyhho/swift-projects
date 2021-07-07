//
//  ReviewAndImageStack.swift
//  ReadMe
//
//  Created by Robbie Ho on 05/07/2021.
//

import SwiftUI
import class PhotosUI.PHPickerViewController

struct ReviewAndImageStack: View {
    @ObservedObject var book: Book
    @Binding var image: UIImage?
    @State var showingImagePicker = false
    @State var showingAlert = false
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical)
            TextField("Review...", text: $book.microReview)
            Book.Image(
                uiImage: image,
                title: book.title,
                cornerRadius: 16
            )
            .scaledToFit()
            
            let updateButton =   Button(action: {showingImagePicker = true},
                                        label: {
                                            Text("Update Image...")
                                            
                                            
                                        })
                .padding()
            
            if image != nil {
                HStack {
                    Spacer()
                    
                    Button(action: {showingAlert = true},
                           label: {
                            Text("Delete Image")
                           })
                    
                    Spacer()
                    
                    updateButton
                    
                }
                
            } else {
                updateButton
            }
            Spacer()
            
        }
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
        .alert(isPresented: $showingAlert) {
            .init(
                title: .init("Delete image for \(book.title)?"),
                primaryButton: Alert.Button.destructive(.init("Delete"))
                {
                    image = nil
                },
                secondaryButton: .cancel())
            
        }
    }
}

struct ReviewAndImageStack_Previews: PreviewProvider {
    static var previews: some View {
        ReviewAndImageStack(book: .init(), image: .constant(nil))
            .padding(.horizontal)
            .previewedInAllColorSchemes
    }
}
