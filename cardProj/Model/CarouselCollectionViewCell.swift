//
//  CarouselCollectionViewCell.swift
//  cardProj
//
//  Created by jason hillegass on 9/13/21.
//

import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cardSide: UILabel!
    
    func configureCarousel(with FlashCard: Flashcard)
    {
        cardSide.text = FlashCard.description
    }
}
