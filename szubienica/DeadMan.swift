//
//  DeadMan.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 14.09.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit
@IBDesignable
class DeadMan: UIView {

    
    fileprivate func pathForFirstStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50.0, y:10.0))
        path.addLine(to: CGPoint(x:50,y:300.0))
        path.lineWidth = 8.0
        return path
        
    }
    fileprivate func pathForSecoundStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 46.0, y:10.0))
        path.addLine(to: CGPoint(x:240.0,y:10.0))
        path.lineWidth = 8.0
        return path
        
    }
    fileprivate func pathForThirdStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:10.0))
        path.addLine(to: CGPoint(x:150,y:50.0))
        path.lineWidth = 8.0
        return path
        
    }
    fileprivate func pathForFourthStep()->UIBezierPath{
        let path = UIBezierPath(arcCenter: CGPoint(x: 150, y: 80), radius: min(bounds.size.width,bounds.size.height)/2*0.2, startAngle: 0.0, endAngle: CGFloat( 2*M_PI), clockwise: false)
     
        path.lineWidth = 8.0
        return path
        
    }
    fileprivate func pathForFifthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:105.0))
        path.addLine(to: CGPoint(x:150,y:200.0))
        path.lineWidth = 8.0
        return path
        
    }
   
    fileprivate func pathForSixthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:105.0))
        path.addLine(to: CGPoint(x:120,y:180.0))
        path.lineWidth = 8.0
        return path
        
    }
    fileprivate func pathForSeventhStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:105.0))
        path.addLine(to: CGPoint(x:180,y:180.0))
        path.lineWidth = 8.0
        return path
        
    }
    fileprivate func pathForEighthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:200.0))
        path.addLine(to: CGPoint(x:120,y:275.0))
        path.lineWidth = 8.0
        return path
        
    }
    fileprivate func pathForNinthStep()->UIBezierPath{
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 150.0, y:200.0))
        path.addLine(to: CGPoint(x:180,y:275.0))
        path.lineWidth = 8.0
        return path
        
    }

 

    
    
    
    override func draw(_ rect: CGRect) {
        
        UIColor.blue.set()
        pathForFirstStep().stroke()
        pathForSecoundStep().stroke()
        pathForThirdStep().stroke()
        pathForFourthStep().stroke()
        pathForFifthStep().stroke()
        pathForSixthStep().stroke()
        pathForSeventhStep().stroke()
        pathForEighthStep().stroke()
        pathForNinthStep().stroke()
    }
}
