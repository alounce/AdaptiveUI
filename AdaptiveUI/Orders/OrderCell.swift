//
//  OrderCell.swift
//  AdaptiveUI
//
//  Created by Alexander Karpenko on 4/2/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {
    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var customerPhoneLabel: UILabel!
    @IBOutlet weak var customerEmailLabel: UILabel!
    @IBOutlet weak var orderIdentifierLabel: UILabel!
    @IBOutlet weak var orderDateLabel: UILabel!
    @IBOutlet weak var orderManagerLabel: UILabel!
    @IBOutlet weak var orderPriorityLabel: UILabel!
    @IBOutlet weak var orderStatusLabel: UILabel!
    @IBOutlet weak var orderSubstatusLabel: UILabel!
    @IBOutlet weak var customerAddressLabel: UILabel!
    
    @IBOutlet weak var orderDateCompactLabel: UILabel!
    
    
    
    var customer: String?
    var phone: String?
    var email: String?
    var address: String?
    var orderId: String?
    var date: String?
    var compactDate: String?
    var manager: String?
    var priority: String?
    var status: String?
    var subStatus: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure() {
        self.customerNameLabel.text = customer
        self.customerPhoneLabel.text = phone
        self.customerEmailLabel.text = email
        self.customerAddressLabel.text = address
        self.orderIdentifierLabel.text = orderId
        self.orderDateLabel.text = date
        self.orderDateCompactLabel.text = compactDate
        self.orderManagerLabel.text = manager
        self.orderPriorityLabel.text = priority
        self.orderStatusLabel.text = status
        self.orderSubstatusLabel.text = subStatus
    }

}
