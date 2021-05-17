//
//  StyleGuide.swift
//  calculator-Proj
//
//  Created by James Lea on 5/17/21.
//

import UIKit

extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = Colors.customSalmon ?? .orange){
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
}

struct Colors {
    static let customBeige = UIColor(named: "customBeige")
    static let customBlue = UIColor(named: "customBlue")
    static let customSalmon = UIColor(named: "customSalmon")
    static let lighterGrey = UIColor(red: 178/255, green: 178/255, blue: 178/255, alpha: 1)

}

struct FontNames {
    static let verdanaBold =  "Verdana-Bold"
    static let markerFeltWide = "MarkerFelt-Wide"
    static let partyLetPlain = "PartyLetPlain"
}
