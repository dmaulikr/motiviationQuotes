//
//  ViewController.swift
//  motiviationQuotes
//
//  Created by Taiwei Ko on 1/27/17.
//  Copyright © 2017 Taiwei Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorTextLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    
    var quotesMemory = QuotesMemory()
    
    @IBAction func getNewQuoteTapped(_ sender: Any)
    {
        let randomQuote = quotesMemory.getRandomQuote()
        let author = quotesMemory.getAuthor(for: randomQuote)
        let authorImageName = quotesMemory.getImageName(for: author)
        
        quoteTextLabel.text = randomQuote
        authorTextLabel.text = author
        authorImageView.image = UIImage(named: authorImageName)
    }
    


}

