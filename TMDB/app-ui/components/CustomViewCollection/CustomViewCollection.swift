//
//  dateSearchCard.swift
//  HEPI
//
//  Created by Mikhael Adiputra on 31/01/23.
//

import UIKit

class CustomViewCollection: UIView {

    //MARK: Layout Subviews
    @IBOutlet weak var collectionViewLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override init(frame : CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder : NSCoder) {
        super.init(coder: coder)
        loadXib()
    }
    
    private func loadXib() {
        let viewFromXib = Bundle.main.loadNibNamed("CustomViewCollection", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    
        self.collectionView.register(UINib(nibName: "MovieCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MovieCollectionViewCell")
    }
}
