//
//  EndGameAlert.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 06.11.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit

class EndGameAlert: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
    }
    

}
//MARK: Extension
extension EndGameAlert{
    func makeCircular(){
        self.layer.cornerRadius = min(self.frame.size.height, self.frame.size.width) / 2.0
        self.clipsToBounds = true
    }
}
