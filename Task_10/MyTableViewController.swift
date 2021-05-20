//
//  MyTableViewController.swift
//  Task_10
//
//  Created by  Bagrat Arutyunov on 11.11.2020.
//

import UIKit

class MyTableViewController: UIViewController {
    var myTableView = UITableView()
    let identifier  = "My Cell"
    
    
    
    
    
    
    
// массив названий секций
    var sectionsArray = ["iCloud", "connection", "notification", "general", "store and pay"]

// массивы лейблов ячеек секций
    
    var iCloudcellNamesArray =  ["Bagrat Arutyunov"]
    var connectionCellNamesArray =  ["Airplane Mode", "Wi-Fi", "Bluetooth", "Mobile Data", "Personal Hotspot"]
    var notificationCellNamesArray =  ["Notifications", "Sounds & Haptics", "Do Not Disturb", "Screen Time"]
    var generalCellNamesArray =  ["General", "Control Centre", "Display & Brightness", "Home Screen", "Accessibility", "Wallpaper", "Siri & Search", "Face ID & Passcode", "Emergency SOS", "Exposure Notifications", "Battery", "Privacy"]
    var storeAndPayCellNamesArray =  ["App Store", "Wallet & Apple Pay"]

// Массивы имен иконок
    
    var iCloudIconsNamesArray =  ["safari.png"]
    var connectionIconsNamesArray =  ["safari.png", "safari.png", "safari.png", "safari.png", "safari.png"]
    var notificationIconsNamesArray =  ["safari.png", "safari.png", "safari.png", "safari.png"]
    var generalIconslNamesArray =  ["safari.png", "safari.png", "safari.png", "safari.png", "safari.png", "safari.png", "safari.png", "safari.png", "safari.png", "safari.png", "safari.png", "safari.png"]
    var storeAndPayIconsNamesArray =  ["safari.png", "safari.png"]
    
//массивы текстов дитейл лейблов
    
    var iCloudDetailLabelTextArray =  ["Apple ID, iCloud, Media & Purchases"]
    var connectionDetailLabelTextArray =  ["","Bagrat 5GHz", "On", "Off", "Off"]
    
    
    
    
    
    
    
    
    
// View элементы отдельных ячеек
    
    var airplaneSwitch = UISwitch()
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
        
        createTable()
        
    

        
        
        
        
    }
    
    
//MARK:- creation of table
    
    func createTable(){
        
        myTableView = UITableView(frame: view.bounds, style: .grouped)
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
        
        self.myTableView.delegate = self
        self.myTableView.dataSource  = self
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        
        view.addSubview(myTableView)
        
        
        
        
    }
}

    
//MARK:- DataSource methods
    
extension MyTableViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return sectionsArray.count
        
        }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section{
        case 0:
            return iCloudcellNamesArray.count
        case 1:
            return connectionCellNamesArray.count
        case 2:
            return notificationCellNamesArray.count
        case 3:
            return generalCellNamesArray.count
        case 4:
            return storeAndPayCellNamesArray.count
        default:
            break
        }
        
        return 0
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        
        
       
      
        
        switch indexPath.section{
        case 0:
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
            cell?.accessoryType = .disclosureIndicator
            cell?.textLabel?.text = iCloudcellNamesArray[indexPath.row]
            cell?.detailTextLabel?.text = iCloudDetailLabelTextArray[indexPath.row]
            cell?.imageView?.image = UIImage(named: iCloudIconsNamesArray[indexPath.row])
            
        case 1:
            cell = UITableViewCell(style: .value1, reuseIdentifier: identifier)
            if indexPath.row == 0{
                cell?.accessoryType = .none
                cell?.accessoryView = airplaneSwitch
            }else{
                cell?.accessoryType = .disclosureIndicator
            }
           
            cell?.textLabel?.text = connectionCellNamesArray[indexPath.row]
            cell?.detailTextLabel?.text = connectionDetailLabelTextArray[indexPath.row]
            cell?.imageView?.image = UIImage(named: connectionIconsNamesArray[indexPath.row])
            
        case 2:
            cell = UITableViewCell(style: .value1, reuseIdentifier: identifier)
            cell?.accessoryType = .disclosureIndicator
            cell?.textLabel?.text = notificationCellNamesArray[indexPath.row]
            cell?.imageView?.image = UIImage(named: notificationIconsNamesArray[indexPath.row])
            
        case 3:
            cell = UITableViewCell(style: .value1, reuseIdentifier: identifier)
            cell?.accessoryType = .disclosureIndicator
            cell?.textLabel?.text = generalCellNamesArray[indexPath.row]
            cell?.imageView?.image = UIImage(named: generalIconslNamesArray[indexPath.row])
            if indexPath.row == 0{
                guard let detailLabel = cell?.detailTextLabel else { return cell! }

                detailLabel.text = "      "
                let circleLabel = UILabel()
                let maxSize: CGFloat = 20

                circleLabel.text = "1"
                circleLabel.textAlignment = .center
                circleLabel.frame = CGRect(x: 0, y: 0, width: maxSize, height: maxSize)
                circleLabel.textColor = .white
                circleLabel.backgroundColor = .systemRed
                circleLabel.layer.cornerRadius = maxSize / 2
                circleLabel.clipsToBounds = true

                detailLabel.addSubview(circleLabel)

            }
            
        case 4:
            cell = UITableViewCell(style: .value1, reuseIdentifier: identifier)
            cell?.accessoryType = .disclosureIndicator
            cell?.textLabel?.text = storeAndPayCellNamesArray[indexPath.row]
            cell?.imageView?.image = UIImage(named: storeAndPayIconsNamesArray[indexPath.row])
         
        default:
            break

        }
        
        return cell!
    }
    
        
    

        
        
        
        
        
    }
    
    

//MARK:- Delegate methods

extension MyTableViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 80.0
        default:
            return 42.0
        }
        
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
    }
}
    

//MARK:- Search

extension MyTableViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text)
    }
}
