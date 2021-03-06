//
//  SwipeTableViewController.swift
//  ToDo
//
//  Created by Amir on 5/19/18.
//  Copyright © 2018 Amir. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController , SwipeTableViewCellDelegate{
    
    
    var cell: UITableViewCell?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80.0
    }
    
    //TableView DataSource Methods
    func visibleRect(for tableView: UITableView) -> CGRect? {
        return self.tableView.frame
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            self.updateModel(at: indexPath)
            
        }
        // customize the action appearance
        deleteAction.image = UIImage(named: "Delete Icon")
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func updateModel(at indexPath: IndexPath){
        // Update View Model
    }
    
}
