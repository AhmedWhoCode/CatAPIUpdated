//
//  BreedRow.swift
//  BreedRow
//
//

import SwiftUI

struct BreedRow: View {
    let breed: Breed
    let imageSize: CGFloat = 100
    var body: some View {
        HStack {
            
            if let referece = breed.imageRef {
                AsyncImage(url: URL(string:"https://cdn2.thecatapi.com/images/\(referece)"+".jpg")) { phase in
                    if let image = phase.image {
                        image.resizable()
                            .scaledToFill()
                            .frame(width: imageSize, height: imageSize)
                            .clipped()
                        
                     } else if phase.error != nil {
                         
                         Text(phase.error?.localizedDescription ?? "error")
                             .foregroundColor(Color.pink)
                             .frame(width: imageSize, height: imageSize)
                     } else {
                        ProgressView()
                             .frame(width: imageSize, height: imageSize)
                     }
                    
                }.onAppear{
                    print("here","https://cdn2.thecatapi.com/images/\(referece)"+".jpg")
                }
            }else {
                Color.gray.frame(width: imageSize, height: imageSize)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(breed.name)
                    .font(.headline)
                Text(breed.temperament)
            }
        }
     
    }
}

#Preview {
    
    BreedRow(breed: Breed.example1())
        .previewLayout(.fixed(width: 400, height: 200))
}
