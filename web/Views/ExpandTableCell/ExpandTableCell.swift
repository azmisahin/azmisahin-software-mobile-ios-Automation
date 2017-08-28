//
//  ExpandTableCell.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

//# MARK: - Requared
import UIKit

// MARK: - View Component - Expandable Table View Cell
class ExpandTableCell: UITableViewCell {
    
    // MARK: - Define
    @IBOutlet weak var viewContent: UIView!
    
    // Header
    @IBOutlet weak var vHeader: UIView!
    @IBOutlet weak var imgPicture: UIImageView!
    @IBOutlet weak var lblHead: UILabel!
    @IBOutlet weak var lblComment: UILabel!
    
    // Detail
    @IBOutlet weak var vDetail: UIView!
    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var btnOk: UIButton!
    
    // Constraint
    @IBOutlet weak var constraintsContent: NSLayoutConstraint!
    
    // MARK: - Property
    
    var index: Int = 0
    
    
    // MARK: - Event
    
    override func awakeFromNib() {
        
        // Base
        super.awakeFromNib()
        
        // Set Resource
        setResource()
        
        // Set UI
        setUI()
        
        // Set Init
        setInit()
        
    }
    
    // Set Resouce
    func setResource(){
        
        // Set Header
        
        // Core.Manager.ResourceManager.Get(key: "app.view.expandTableCell.Head")
        self.lblHead.text =  "Header"
        
        //  Core.Manager.ResourceManager.Get(key: "app.view.expandTableCell.Comment")
        self.lblComment.text = "Comment"
        
        // Set Detail
        
        // Core.Manager.ResourceManager.Get(key: "app.view.expandTableCell.Detail")
        self.lblDetail.text = "Detail"
        
        // Core.Manager.ResourceManager.Get(key: "app.view.expandTableCell.BtnOk")
        self.btnOk.setTitle("Ok", for: .normal)
        
    }
    
    // Set UI
    func setUI(){
        
        // Cell Global
        
        // Font
        
        // Color
        
        // Button Style
    }
    
    // Set Init
    func setInit(){
        
        // Set
        
    }
    
    // Set Selected
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        // Base Selected
        super.setSelected(selected, animated: animated)
        
        // Selected
    }
    
    // Action
    @IBAction func btnAction(_ sender: Any, forEvent event: UIEvent) {
        
    }
    
    // MARK: - View Height
    class var DefaultHeight: CGFloat{ get { return 100 } }
    class var ExpandedHeight: CGFloat{ get { return 200 } }
    
    
    // Set Cell UI
    public static func SetCellUI(cell: ExpandTableCell) -> ExpandTableCell {
        
        // Background Color / odd - even
        cell.viewContent.backgroundColor = cell.index % 2 == 0 ? UIColor.grey_500(): UIColor.grey_600()
        
        return cell
    }
    
    // Set Cell UI
    public static func SetModel(cell: ExpandTableCell, model: DB.Models.Page, index: Int) -> ExpandTableCell {
        
        // Set Model To View
        cell.index = index
        
        cell.lblHead.text = model.Title
        cell.lblComment.text = model.Description
        cell.lblDetail.text = model.Detail
        cell.imgPicture.image = UIImage(named: model.Picture)
        
        // return
        return cell
    }
}
