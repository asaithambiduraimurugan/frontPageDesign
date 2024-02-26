//
//  TableViewCell.swift
//  frontPageDesign
//
//  Created by mymac on 14/02/24.
//

import UIKit

class TableViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
   
    
    let mydata = [UIImage(named: "img11"),UIImage(named: "img12"),UIImage(named: "img13"),UIImage(named: "img14"),UIImage(named: "img16"),UIImage(named: "img17"),UIImage(named: "img18"),UIImage(named: "img19"),UIImage(named: "img20"),UIImage(named: "img11"),UIImage(named: "img12"),UIImage(named: "img13"),UIImage(named: "img14"),UIImage(named: "img16"),UIImage(named: "img18")]
    
    let news = ["Elon Musk","Bill Gates","Mark Zuckbark","steve job","cristiano ronaldo","Lionel messi","sunil chhetri","Elon Musk","Bill Gates","Mark Zuckbark","steve job","cristiano ronaldo","Lionel messi","sunil chhetri","Elon Musk","Bill Gates","Mark Zuckbark","steve job","cristiano ronaldo","Lionel messi","sunil chhetri","Elon Musk","Bill Gates","Mark Zuckbark","steve job","cristiano ronaldo","Lionel messi","sunil chhetri"]
    @IBOutlet var collectionview: UICollectionView!
    
    static let identifier = "TableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName:"TableViewCell", bundle: nil)
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: myCollectionViewCell.identifier)
        collectionview.dataSource = self
        collectionview.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mydata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: myCollectionViewCell.identifier , for: indexPath) as! myCollectionViewCell
        cell.mylabel.text = news[indexPath.row]
        
        print(news);
        cell.myImageview.image = mydata[indexPath.row]
       // cell.mylabel1.text = news[indexPath.row]
       // cell.myImageview1.image = mydata[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        CGSize(width: 200, height: 200)
    }
}
