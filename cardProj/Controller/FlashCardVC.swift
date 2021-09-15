//
//  FlashCardVC.swift
//  cardProj
//
//  Created by Bradley Calkins on 9/9/21.
//

import UIKit

class FlashCardVC: UIViewController {

    @IBOutlet weak var mainMenuCollectionView: UICollectionView!
    
    private let mainMenuCellIdentifier = "MainMenuCollectionViewCell"
    private let sequeIdentifier = "moveToCarousel"
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        mainMenuCollectionView.dataSource = self
        mainMenuCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation
/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if let carouselCollectionViewController = segue.destination as? CarouselCollectionViewController{
        }
        // Pass the selected object to the new view controller.
    }*/
}

extension FlashCardVC: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flashCardsForSetup.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainMenuCollectionView.dequeueReusableCell(withReuseIdentifier: mainMenuCellIdentifier, for: indexPath) as? MainMenuCollectionViewCell
        cell?.configureMainMenuCell(with: flashCardsForSetup[indexPath.row])
        
        return cell ?? MainMenuCollectionViewCell()
    }
    
    
}

extension FlashCardVC: UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let devicebounds = UIScreen.main.bounds
        let tileWidth = (devicebounds.size.width) * 0.485
        let tileHeight = (devicebounds.size.height) * 0.235
        
        return CGSize(width: tileWidth, height: tileHeight)
    }
}

extension FlashCardVC: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Description: \(flashCardsForSetup[indexPath.row].description)")
    }
}
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


