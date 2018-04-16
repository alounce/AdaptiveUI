//
//  OrdersController.swift
//  AdaptiveUI
//
//  Created by Alexander Karpenko on 4/2/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import UIKit

class OrdersController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    var orders = Order.getAll()

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell", for: indexPath)
        //cell.detailTextLabel?.text = order.customer.fullName
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCellAdaptive", for: indexPath) as? OrderCell else {
            fatalError("Unable to find OrderCellAdaptive cell in storyboard")
        }
        let order = orders[indexPath.row]
        cell.customer = order.customer.fullName
        cell.phone = order.customer.phone
        cell.email = order.customer.email
        cell.address = order.customer.address
        cell.orderId = order.id
        cell.date = order.valueForCreatedDate
        cell.compactDate = order.compactValueForCreatedDate
        cell.manager = order.manager
        cell.priority = order.priority
        cell.status = order.status
        cell.subStatus = order.valueForCallbackDate
        cell.configure()
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let hSize = traitCollection.horizontalSizeClass
//        switch hSize {
//        case .compact: return 130
//        case .regular: return 100
//        case .unspecified: return 100
//        }
//    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        print("traitCollectionDidChange")
        //tableView.setNeedsLayout()
        //tableView.setNeedsUpdateConstraints()
        tableView.reloadData()
    }
}
