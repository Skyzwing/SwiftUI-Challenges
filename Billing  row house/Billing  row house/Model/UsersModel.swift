//
//  RegisterModel.swift
//  Billing  row house
//
//  Created by Surachat Yaitammasan on 27/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import Foundation

class UsersModel {
    
//    var uid: String
//    var email: String?
////    let password: String?
//    var apartmentName: String?
////    var amountRoom: Int?
//
//    init(uid: String, email: String?, apartmentName: String?) {
//
//        self.uid = uid
//        self.email = email
////        self.password = password
//        self.apartmentName = apartmentName
////        self.amountRoom = amountRoom
//
//    }
    var uid: String
    var email: String?
    var displayName: String?

    init(uid: String, displayName: String?, email: String?) {
        self.uid = uid
        self.email = email
        self.displayName = displayName
    }
    
}
