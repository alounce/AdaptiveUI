//
//  ContactCell.swift
//  AdaptiveUI
//
//  Created by Alexander Karpenko on 4/6/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var labelPosition: UILabel!
    @IBOutlet weak var textFirstName: UITextField!
    @IBOutlet weak var buttonRelation: UIButton!
    @IBOutlet weak var buttonKeyHolder: UIButton!
    @IBOutlet weak var textLastName: UITextField!
    @IBOutlet weak var textPhone: UITextField!
    @IBOutlet weak var buttonPhoneType: UIButton!
    @IBAction func keyHolderTap(_ sender: Any) {
        keyHolder = !keyHolder
    }
    
    @IBAction func phoneKindTap(_ sender: Any) {
    }
    @IBAction func relationTap(_ sender: Any) {
    }
    
    
    
    var position: Int = 1 {
        didSet {
            labelPosition.text = "#\(position)"
        }
    }
    
    var firstName: String = "" {
        didSet{
            textFirstName.text = firstName
        }
    }
    
    var lastName: String = "" {
        didSet{
            textLastName.text = lastName
        }
    }
    
    var relationship: Relationship = .husband {
        didSet{
            buttonRelation.setTitle(relationship.rawValue, for: .normal)
        }
    }
    
    var keyHolder: Bool = false {
        didSet {
            let imageName = keyHolder ? "Checked" : "NotChecked"
            buttonKeyHolder.setImage(UIImage(named: imageName), for: .normal)
        }
    }
    
    var phone: String  = "" {
        didSet{
            textPhone.text = phone
        }
    }
    
    var phoneKind: PhoneKind = .mobile {
        didSet{
            buttonRelation.setTitle(phoneKind.rawValue, for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
