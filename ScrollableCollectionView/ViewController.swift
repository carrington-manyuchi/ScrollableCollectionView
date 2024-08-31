//
//  ViewController.swift
//  ScrollableCollectionView
//
//  Created by Manyuchi, Carrington C on 2024/08/31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var myPageControl: UIPageControl!
    
    var newOfferImages  = ["one", "two", "three", "four"]
    var currentIndex  = 0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newOfferImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MyCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.myImageView.image = UIImage(named: newOfferImages[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
