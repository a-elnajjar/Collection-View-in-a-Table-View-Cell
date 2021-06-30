//
//  TableViewCell.swift
//  Collection-View-in-a-Table-View-Cell
//
//  Created by Abdalla Elnajjar on 2021-06-29.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectioView: UICollectionView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate, forRow row: Int) {
        collectioView.delegate = dataSourceDelegate
        collectioView.dataSource = dataSourceDelegate
        collectioView.tag = row
        collectioView.reloadData()
    }
    


    var collectionViewOffset: CGFloat {
        set { collectioView.contentOffset.x = newValue }
        get { return collectioView.contentOffset.x }
    }



    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


