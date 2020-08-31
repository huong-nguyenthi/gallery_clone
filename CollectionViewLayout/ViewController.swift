//
//  ViewController.swift
//  CustomCollectionView
//
//  Created by Nguyen Thi Huong on 8/31/20.
//  Copyright © 2020 Nguyen Thi Huong. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let lblOPs = ["hihi", "lala", "lolo", "bilo", "meli", "lili", "hola", "lalo", "haha", "hoho", "xixi", "xxo", "hiho", "loli" ]
    
    let opImage: [String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card14"]
    
    let customCellID = "CustomCollectionViewCell"
    
    let lineSpacing: CGFloat = 5
    let interItemSpacing: CGFloat = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initComponent()
        setupCollectionViewSize()
    }
    
    fileprivate func initComponent() {
        collectionView.register(UINib(nibName: customCellID, bundle: nil), forCellWithReuseIdentifier: customCellID)
    }
    
    private func setupCollectionViewSize() {
      let customLayout = CustomLayout()
      customLayout.delegate = self
      collectionView.collectionViewLayout = customLayout
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return opImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellID, for: indexPath) as! CustomCollectionViewCell
        
        cell.lblOP.text = lblOPs[indexPath.row]
        
        cell.opImageView.image = UIImage(named: opImage[indexPath.row])
        
        return cell
    }
    
}
extension ViewController: CustomLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, sizeOfPhotoAtIndexPath indexPath: IndexPath) -> CGSize {
        return UIImage(named: opImage[indexPath.row])!.size
    }
}



