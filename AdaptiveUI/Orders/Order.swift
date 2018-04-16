//
//  OrderModel.swift
//  AdaptiveUI
//
//  Created by Alexander Karpenko on 4/2/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import Foundation


struct Order {
    let id: String
    let date: Date
    let manager: String
    let priority: String
    let status: String
    let callbackDate: Date
    let customer: Customer
}

extension Order {
    static func getAll() -> [Order] {
        return [
            Order(id: "A-001002003004005",
                  date: Date().addingTimeInterval(-1*5*24*60*60),
                  manager: "Aaron Lee",
                  priority: "4★",
                  status: "Pending Cancel",
                  callbackDate: Date().addingTimeInterval(-1*2*24*60*60),
                  customer: Customer(fullName: "John J. Doe",
                                     phone: "+38(050)-765-3748",
                                     email: "jdoe@gmail.com", address: "123 Fl ave apt.35")),
            Order(id: "A-001002003004006",
                  date: Date().addingTimeInterval(-1*6*24*60*60),
                  manager: "Eric Reinolds",
                  priority: "2★",
                  status: "Callback",
                  callbackDate: Date().addingTimeInterval(-1*3*24*60*60),
                  customer: Customer(fullName: "Bob Fender",
                                     phone: "+38(050)-765-1123",
                                     email: "jdoe@gmail.com", address: "9313 Catching Fire Way")),
            Order(id: "A-001002003004007",
                  date: Date().addingTimeInterval(-1*4*24*60*60),
                  manager: "Justin Logan",
                  priority: "5★",
                  status: "Pending Cancel",
                  callbackDate: Date().addingTimeInterval(-1*1*24*60*60),
                  customer: Customer(fullName: "John J. Doe",
                                     phone: "+38(050)-765-4432",
                                     email: "jdoe@gmail.com", address: "3982 Davecourt Loop"))
        ]
    }
}
