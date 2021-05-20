//
//  MyCollectionViewController.swift
//  Task_10
//
//  Created by  Bagrat Arutyunov on 11.11.2020.
//

import UIKit

class MyCollectionViewController: UIViewController {
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    
    
    var itemShopArray: [BSShop]{
        
        var blankShop1 = BSShop()
        blankShop1.productName = "Пуховик BLACK STAR 13"
        blankShop1.oldPrice = "13 500 руб."
        blankShop1.newPrice = "4 900 руб."
        blankShop1.amountOfSale = "50%"
        blankShop1.imageName = "BS2.jpg"
        
        var blankShop2 = BSShop()
        blankShop2.productName = "Бомбер BS SKETCH"
        blankShop2.oldPrice = "3 900 руб."
        blankShop2.newPrice = "2 490 руб."
        blankShop2.amountOfSale = "50%"
        blankShop2.imageName = "BS2.jpg"
        
        var blankShop3 = BSShop()
        blankShop3.productName = "Шапка BLACK STAR 13"
        blankShop3.oldPrice = "10 000 руб."
        blankShop3.newPrice = "5 000 руб."
        blankShop3.amountOfSale = "50%"
        blankShop3.imageName = "BS2.jpg"
        
        var blankShop4 = BSShop()
        blankShop4.productName = "Кепка BLACK STAR 13"
        blankShop4.oldPrice = "1 500 руб."
        blankShop4.newPrice = "750 руб."
        blankShop4.amountOfSale = "50%"
        blankShop4.imageName = "BS2.jpg"
        
        var blankShop5 = BSShop()
        blankShop5.productName = "Пуховик BLACK STAR 13"
        blankShop5.oldPrice = "13 500 руб."
        blankShop5.newPrice = "4 900 руб."
        blankShop5.amountOfSale = "50%"
        blankShop5.imageName = "BS2.jpg"
        
        var blankShop6 = BSShop()
        blankShop6.productName = "Бомбер BS SKETCH"
        blankShop6.oldPrice = "3 900 руб."
        blankShop6.newPrice = "2 490 руб."
        blankShop6.amountOfSale = "50%"
        blankShop6.imageName = "BS2.jpg"
        
        var blankShop7 = BSShop()
        blankShop7.productName = "Шапка BLACK STAR 13"
        blankShop7.oldPrice = "10 000 руб."
        blankShop7.newPrice = "5 000 руб."
        blankShop7.amountOfSale = "50%"
        blankShop7.imageName = "BS2.jpg"
        
        var blankShop8 = BSShop()
        blankShop8.productName = "Кепка BLACK STAR 13"
        blankShop8.oldPrice = "1 500 руб."
        blankShop8.newPrice = "750 руб."
        blankShop8.amountOfSale = "50%"
        blankShop8.imageName = "BS2.jpg"
        
        
        return [blankShop1, blankShop2, blankShop3, blankShop4, blankShop5, blankShop6, blankShop7, blankShop8]
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    
        
        
        
        
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
        
        
        
    }
    

    

    
    
}


extension MyCollectionViewController: UICollectionViewDelegate{
    
    
    
}


extension MyCollectionViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemShopArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let  itemCell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "BSCell", for: indexPath) as? MyCollectionViewCell{
            
            
            itemCell.contentMode = .scaleAspectFill
            itemCell.shopMenu = itemShopArray[indexPath.row]
            
            
            
            
            
            return itemCell
        }
        return UICollectionViewCell()
    }
    
    
    
}

//MARK:- Search
extension MyCollectionViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text)
    }
}





           

extension MyCollectionViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.bounds.size.width/2 - 10, height: 300)
    }
}

extension String {
    func strikeThrough() -> NSAttributedString {
        let attributeString =  NSMutableAttributedString(string: self)
        attributeString.addAttribute(
            NSAttributedString.Key.strikethroughStyle,
               value: NSUnderlineStyle.single.rawValue,
                   range:NSMakeRange(0,attributeString.length))
        return attributeString
    }
}
