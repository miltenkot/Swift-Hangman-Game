//
//  MainDeadMan.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 22.09.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit
@IBDesignable
class MainDeadMan: UIView {
    
    public func pathForFirstStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50.0, y:10.0))
        path.addLine(to: CGPoint(x:50,y:300.0))
        path.lineWidth = 8.0
        return path
        
    }
    public func pathForSecoundStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 46.0, y:10.0))
        path.addLine(to: CGPoint(x:240.0,y:10.0))
        path.lineWidth = 8.0
        return path
        
    }
    public func pathForThirdStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:10.0))
        path.addLine(to: CGPoint(x:150,y:50.0))
        path.lineWidth = 8.0
        return path
        
    }
    public func pathForFourthStep()->UIBezierPath{
        let path = UIBezierPath(arcCenter: CGPoint(x: 150, y: 80), radius: min(bounds.size.width,bounds.size.height)/2*0.2, startAngle: 0.0, endAngle: CGFloat( 2*M_PI), clockwise: false)
        
        path.lineWidth = 8.0
        return path
        
    }
    public func pathForFifthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:105.0))
        path.addLine(to: CGPoint(x:150,y:200.0))
        path.lineWidth = 8.0
        return path
        
    }
    
    public func pathForSixthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:105.0))
        path.addLine(to: CGPoint(x:120,y:180.0))
        path.lineWidth = 8.0
        return path
        
    }
    public func pathForSeventhStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:105.0))
        path.addLine(to: CGPoint(x:180,y:180.0))
        path.lineWidth = 8.0
        return path
        
    }
    public func pathForEighthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:200.0))
        path.addLine(to: CGPoint(x:120,y:275.0))
        path.lineWidth = 8.0
        return path
        
    }
    public func pathForNinthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:200.0))
        path.addLine(to: CGPoint(x:180,y:275.0))
        path.lineWidth = 8.0
        return path
        
    }

    var pathCase:[UIBezierPath] = []
    public func whatStep(arg:Int)->[UIBezierPath]{
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
    
    public var cout = 0
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        UIColor.black.set()
        let step  =  whatStep(arg: cout)
        for arg in step{
            arg.stroke()
        }
        
        
        
        
    }
}
