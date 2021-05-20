//
//  MyScrollViewController.swift
//  Task_10
//
//  Created by  Bagrat Arutyunov on 11.11.2020.
//

import UIKit

class MyScrollViewController: UIViewController {

    
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    
    @IBOutlet weak var mainStackView: UIStackView!
    
    
    
    @IBOutlet weak var burgerImageView: UIImageView!
    
    
    
    @IBOutlet weak var firstView: UIView!
    
    
    
    @IBOutlet weak var secondView: UIView!
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    
    @IBOutlet weak var saleImageView: UIImageView!
    
    
    
    @IBOutlet weak var saleLabel: UILabel!
    
    
    @IBOutlet weak var starLabel: UILabel!
    
    @IBOutlet weak var starImageView: UIImageView!
    
    @IBOutlet weak var separatorLabel: UILabel!
    
    
    
    @IBOutlet weak var recieptLabel: UILabel!
    
    
    
    @IBOutlet weak var menuButton: UIButton!
    
    
    
   
    
    
    @IBOutlet weak var mapImageView: UIImageView!
    
    
    
    @IBOutlet weak var depositLabel: UILabel!
    
    
    @IBOutlet weak var createButton: UIButton!
    
    
    @IBOutlet weak var outButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //menu button style
        
        menuButton.layer.cornerRadius = menuButton.layer.frame.size.height/2
        
        menuButton.layer.borderWidth = 2
        menuButton.layer.borderColor = UIColor.green.cgColor
        
        
        
        //create button style
        
        createButton.layer.cornerRadius = createButton.layer.frame.size.height/2
        
        
        //out button style
        outButton.layer.cornerRadius = outButton.layer.frame.size.height/2
        outButton.layer.borderWidth = 2
        outButton.layer.borderColor = UIColor.green.cgColor
        
        
        
        
        
        
    
    }
    

}
