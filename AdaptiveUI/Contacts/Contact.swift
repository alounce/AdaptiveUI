//
//  Contact.swift
//  AdaptiveUI
//
//  Created by Alexander Karpenko on 4/6/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import Foundation

enum PhoneKind: String {
    case work = "Work"
    case home = "Home"
    case mobile = "Mobile"
}

enum Relationship: String {
    case husband = "Husband"
    case wife = "Wife"
    case son = "Son"
    case daughter = "Daughter"
    case neighbor = "Neighbor"
}

struct Contact {
    let badgeId: Int
    let firstName: String
    let lastName: String
    let phoneKind: PhoneKind
    let phone: String
    let email: String
    let isKeysHolder: Bool
    let relationship: Relationship
}

extension Contact {
    static func getAll() -> [Contact] {
        return [
            Contact(badgeId: 1023,
                    firstName: "John",
                    lastName: "Doe",
                    phoneKind: .mobile,
                    phone: "+38(050)456-78-65",
                    email: "johnd@gmail.com",
                    isKeysHolder: true,
                    relationship: .husband),
            Contact(badgeId: 1023,
                    firstName: "Daniel",
                    lastName: "Jackson",
                    phoneKind: .home,
                    phone: "+38(044)386-90-50",
                    email: "danielj@gmail.com",
                    isKeysHolder: true,
                    relationship: .neighbor),
            Contact(badgeId: 1023,
                    firstName: "Samanta",
                    lastName: "Doe",
                    phoneKind: .work,
                    phone: "+38(050)456-78-65",
                    email: "samd@gmail.com",
                    isKeysHolder: true,
                    relationship: .wife),
            Contact(badgeId: 1023,
                    firstName: "James",
                    lastName: "Doe",
                    phoneKind: .mobile,
                    phone: "+38(050)456-99-18",
                    email: "johnd@gmail.com",
                    isKeysHolder: true,
                    relationship: .son),
            Contact(badgeId: 1023,
                    firstName: "Kevin",
                    lastName: "McDouglas",
                    phoneKind: .mobile,
                    phone: "+38(050)456-78-65",
                    email: "johnd@gmail.com",
                    isKeysHolder: true,
                    relationship: .neighbor)
        ]
    }
}
