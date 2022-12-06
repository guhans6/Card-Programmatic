//
//  CWButton.swift
//  Card-Programmatic
//
//  Created by guhan-pt6208 on 01/12/22.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
//        configureButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(colour: UIColor,title: String, systemImageName: String) {
        super.init(frame: .zero)    /// makes every side zero co-ordinates like x, y, width and height to zero
        
        // Only available in IOS 15
        configuration = .filled()
        configuration?.title = title
        configuration?.cornerStyle = .medium
        configuration?.baseBackgroundColor = colour
        configuration?.image = UIImage(systemName: systemImageName)
//        configuration?.imagePlacement = .trailing     // Place image on right side
        configuration?.imagePadding = 5
        // Can't edit font in this
        
        translatesAutoresizingMaskIntoConstraints = false
//        self.backgroundColor = backgroundColour
//        setTitle(title, for: .normal)
//        configureButton()
    }
    
    
//    func configureButton() {
//        layer.cornerRadius = 8
//        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
//        setTitleColor(.white, for: .normal)
//        translatesAutoresizingMaskIntoConstraints = false
//
//    }
}
