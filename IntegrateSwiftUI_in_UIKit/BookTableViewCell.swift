//
//  BookTableViewCell.swift
//  IntegrateSwiftUI_in_UIKit
//
//  Created by mohamed  habib on 05/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookLabel: UILabel!
    
    
    var book: Book?{
        didSet{
            populateCell(withBook: book!)
        }
    }
    

    private func populateCell(withBook book: Book){
        self.bookImageView.image = UIImage(named: book.imageName)
        self.bookLabel.text = book.title
    }
}
