//
//  HomeController.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// Requared
import UIKit

// MARK: - web Tests
/// web App Tests
///
/// `App Managers Tests`
///
class HomeController:BaseController, UITableViewDelegate, UITableViewDataSource,UITabBarDelegate{
    
    // MARK: - Define
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tabBar: UITabBar!
    // MARK: - Property
    
    var models = [DB.Models.Page()]
    
    // Load
    override func viewDidLoad() {
        
        // Base
        super.viewDidLoad()
        
        // Demo
        demoData(type: "New :")
        
        //Set View
        setView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /// Demo Data
    func demoData(type : String){
        
        App.DataContext.Pages = []
        for index in 1...10{
            let item = DB.Models.Page()
            item.Title = "\(type) Title \(index)"
            item.Description = "Description \(index)"
            item.Detail = "Detail \(index)"
            item.Picture = "logo"
            App.DataContext.Pages.append(item)
        }
        models = App.DataContext.Pages
        self.tableView.reloadData()
    }
    
    // MARK: - Function
    
    // Set Current View
    func setView()  {
        
        // Get All Models Data Context
        models = App.DataContext.Pages
        
        // Set Table
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Event
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if(item.tag == 1){
            demoData(type: "Viewed :")
        }else{
            demoData(type: "Recent :")
        }
    }
}
