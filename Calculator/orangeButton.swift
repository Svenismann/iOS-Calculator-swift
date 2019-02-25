//
//  orangeButton.swift
//  Calculator
//
//  Created by Sven Forstner on 24.02.19.
//  Copyright © 2019 Sven Forstner. All rights reserved.
//

import UIKit

class orangeButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.bounds.size.width / 2.0
        self.clipsToBounds = true
    }
    
    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? Colors.orangeTapped : Colors.orange
        }
    }


}
