//
//  ScheduleModel.swift
//  PictaVate
//
//  Created by Greg Tiu on 2/14/19.
//  Copyright © 2019 Greg Tiu. All rights reserved.
//

import Foundation

class ScheduleModel{

    var itemList: [ScheduleItem] = []
    
    func newItem() -> ScheduleItem {
        let item = ScheduleItem()
        item.time = "5pm"
        itemList.append(item)
        return item
    }
    
    
}
