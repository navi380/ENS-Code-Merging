//
//  GeneralView.swift
//  NewRelic App test
//
//  Created by Hamza Sallar on 30/08/2022.
//

import UIKit

class GeneralView: UIView {

    @IBInspectable var roundedCornersValue : CGFloat = 0.0 {
        didSet {
            setupLayout()
        }
    }
    @IBInspectable var borderWidthValue : CGFloat = 0.0 {
        didSet{
            setupLayout()
        }
    }
    
    @IBInspectable var borderColor : UIColor = .blue
        {
        didSet{
            setupLayout()
        }
    }
    @IBInspectable var shadow : CGFloat = 0.0 {
        didSet{
            setupLayout()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupLayout()
    }
    
    func setupLayout() {
        self.layer.borderWidth = borderWidthValue
        self.layer.borderColor = borderColor.cgColor
        self.layer.shadowOpacity = shadow
    }

}
