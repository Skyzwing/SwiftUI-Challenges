//
//  RowHouseModel.swift
//  Billing  row house
//
//  Created by Surachat Yaitammasan on 26/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import Foundation

class ApartmentsModel {
    
    struct ApartmentKey {
        
        let id: UUID
        let email: String
        let apartmentName: String
        var items: [ApartmentItems]
    }
    
    struct ApartmentItems {
        var id: UUID
        var room: String
        var beforeElectricUnit: Double
        var afterElectricUnit: Double
        var beforeWaterUnit: Double
        var afterWaterUnit: Double
        var price: Double
    }
    
}
