//
//  CollectionViewCell.swift
//  frontPageDesign
//
//  Created by mymac on 14/02/24.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var mylabel: UILabel!
    @IBOutlet var myImageview: UIImageView!

    
    
    static let identifier = "myCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "myCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
