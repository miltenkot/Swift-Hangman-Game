//
//  MainDeadMan.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 22.09.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit
@IBDesignable
class MainDeadMan: DeadMan {
    var pathCase:[UIBezierPath] = []
    var cout = 0
    
    override func draw(_ rect: CGRect) {
        UIColor.black.set()
        let step  =  whatStep(arg: cout)
        for arg in step{
            arg.stroke()
        }
    }
    
    func whatStep(arg:Int)->[UIBezierPath]{
        switch arg {
        case 1:
            pathCase.append(pathForFirstStep())
        case 2:
            pathCase.append(pathForSecoundStep())
        case 3:
            pathCase.append(pathForThirdStep())
        case 4:
            pathCase.append(pathForFourthStep())
        case 5:
            pathCase.append(pathForFifthStep())
        case 6:
            pathCase.append(pathForSixthStep())
        case 7:
            pathCase.append(pathForSeventhStep())
        case 8:
            pathCase.append(pathForEighthStep())
        case 9:
            pathCase.append(pathForNinthStep())
        default:
            return pathCase
        }
        return pathCase
    }
}
