//
//  OrderViewModel.swift
//  AdaptiveUI
//
//  Created by Alexander Karpenko on 4/2/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import Foundation

extension Order {
    
    var valueForCreatedDate: String {
        let df = DateFormatter()
        df.dateFormat = "M/dd/yyyy, h:mm a"
        let dateString = df.string(from: date)
        return "Created: \(dateString)"
    }
    
    var compactValueForCreatedDate: String {
        let df = DateFormatter()
        df.dateFormat = "MMM dd, yyyy"
        let dateString = df.string(from: date)
        return "Created: \(dateString) by "
    }
    
    var valueForCallbackDate: String {
        let df = DateFormatter()
        df.dateFormat = "M/dd/yyyy, h:mm a"
        let dateString = df.string(from: callbackDate)
        return dateString
    }
}
