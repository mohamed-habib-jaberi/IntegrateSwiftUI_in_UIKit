//
//  BooksTableViewController.swift
//  IntegrateSwiftUI_in_UIKit
//
//  Created by mohamed  habib on 05/06/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit
import SwiftUI

class BooksTableViewController: UITableViewController {

    private let books = Book.demoBooks
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookTableViewCell

        cell.book = books[indexPath.row]

        return cell
    }
    
    // Show Detail View
    @IBSegueAction func showBooks(_ coder: NSCoder) -> UIViewController? {
        
        let selectedRow = tableView.indexPathForSelectedRow!.row
        let selectesIndex = books[selectedRow]
        
        return UIHostingController(coder: coder, rootView: BookDetailView(book: selectesIndex) )
    }
    
}
