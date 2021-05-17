//
//  OutputBoxLabel.swift
//  calculator-Proj
//
//  Created by James Lea on 5/17/21.
//

import UIKit

class OutputBoxLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLabel()
    }
    
    func setupLabel(){
        updateFontTo(font: FontNames.markerFeltWide)
        self.backgroundColor = Colors.customBlue
    }
    
    func updateFontTo(font: String) {
        guard let size = self.font?.pointSize else {return}
        self.font = UIFont(name: font, size: size)
    }
}
