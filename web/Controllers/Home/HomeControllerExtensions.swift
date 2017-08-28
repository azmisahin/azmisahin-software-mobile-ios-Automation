//
//  HomeControllerExtensions.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import Foundation
import UIKit

// MARK: - Controller Extensions
extension HomeController{
    
    // MARK: - Define
    
    // Initalize
    override func viewWillAppear(_ animated: Bool) {
        
        // Set Resource
        setResource()
        
        // Set UI
        setUI()
        
        // Set Init
        setInit()
    }
    
    // MARK: Function
    
    // Set Resource
    func setResource()  {
        
        // Set
    }
    
    // Set UI
    func setUI() {
        
        // Item Color
        
        // Set Font
        
        // Visibilty
        
        // View
        view.backgroundColor = UIColor.clear
        
        // Table
        tableView.backgroundColor = UIColor.clear
        
        // Table Row
        tableView.sectionHeaderHeight = 0
        tableView.separatorColor = UIColor.clear
    }
    
    // Set Init
    func setInit(){
        
        // Visibilty By Model
        
        // Table Visibily
        tableView.isHidden = models.count == 0 ? true: false
        
        // UI xib Register
        let cellNib = UINib(nibName: "ExpandTableCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "tableCell")
        
        // Table Row Height Automatic
        self.tableView.rowHeight = ExpandTableCell.DefaultHeight
        
    }
    
    // MARK: - Table Menu
    
    // Menu Count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return Models Count
        return models.count
    }
    
    // Menu Item
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Define
        var item = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! ExpandTableCell
        let model = models[indexPath.row]
        
        // Set Item
        item = ExpandTableCell.SetModel(cell: item, model: model, index: indexPath.row)
        
        // Set Cell UI
        item = ExpandTableCell.SetCellUI(cell: item)
        
        // Return
        return item
    }
    
    
    // Table Row Select
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Define
        
        // Selected Model item
        let model = models[indexPath.row]
        log.debug("Title          :   \(model.Title)")      // 0
        
        // Event
        
        // Set Manager Selected
        
        // Present
    }
}
