//
//  ClearButton.swift
//  calculator-Proj
//
//  Created by James Lea on 5/17/21.
//

import UIKit

class ClearButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButton()
    }
    
    func setupButton() {
        updateFontTo(font: FontNames.partyLetPlain)
        addCornerRadius()
        setTitleColor(.black, for: .normal)
        self.backgroundColor = .red
    }
    
    func updateFontTo(font: String) {
        guard let size = self.titleLabel?.font.pointSize else {return}
        self.titleLabel?.font = UIFont(name: font, size: size)
    }
}

