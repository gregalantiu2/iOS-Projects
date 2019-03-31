//
//  ScheduleTableViewController.swift
//  PictaVate
//
//  Created by Greg Tiu on 2/11/19.
//  Copyright © 2019 Greg Tiu. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {

    var scheduleTimes: ScheduleModel
    
    required init?(coder aDecoder: NSCoder) {
        scheduleTimes = ScheduleModel()
        super.init(coder: aDecoder)
    }
    
    @IBAction func addTime(_ sender: Any) {
        
        let newRowIndex = scheduleTimes.itemList.count
        _ = scheduleTimes.newItem()
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        //return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scheduleTimes.itemList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleItem", for: indexPath)
        if scheduleTimes.itemList.count > 0 {
            let item = scheduleTimes.itemList[indexPath.row]
            configureText(for: cell, with: item)
        }
        return cell
    }
    
    //When a user taps on the row: 
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let cell = tableView.cellForRow(at: indexPath){
//
//        }
//    }
    
    func configureText(for cell: UITableViewCell, with item: ScheduleItem) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item.time
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        scheduleTimes.itemList.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }

}
