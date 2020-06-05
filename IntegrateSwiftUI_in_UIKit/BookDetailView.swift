//
//  BookDetailView.swift
//  IntegrateSwiftUI_in_UIKit
//
//  Created by mohamed  habib on 05/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        VStack {
            
            Image(book.imageName)
                .resizable()
                .scaledToFit()
            
            Text(book.title)
                .font(.largeTitle)
                .foregroundColor(.primary)
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book.demoBooks.randomElement()!)
    }
}
