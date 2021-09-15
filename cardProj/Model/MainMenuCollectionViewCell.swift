//
//  MainMenuCollectionViewCell.swift
//  cardProj
//
//  Created by jason hillegass on 9/13/21.
//

import UIKit

class MainMenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainMainDisplay: UILabel!
    
    func configureMainMenuCell(with FlashCard: Flashcard)
    {
        mainMainDisplay.text = FlashCard.headline
    }
}
