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
    func pathForFirstStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 50.0, y:10.0), line: CGPoint(x:50,y:300.0))
    }
    func pathForSecoundStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 46.0, y:10.0), line: CGPoint(x:240.0,y:10.0))
    }
    func pathForThirdStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 150.0, y:10.0), line: CGPoint(x:150,y:50.0))
    }
    func pathForFourthStep()-> UIBezierPath{
        let path = UIBezierPath(arcCenter: CGPoint(x: 150, y: 80), radius: min(bounds.size.width,bounds.size.height)/2*0.2, startAngle: 0.0, endAngle: CGFloat( 2*Double.pi), clockwise: false)
        
        path.lineWidth = 8.0
        return path
    }
    func pathForFifthStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 150.0, y:105.0), line: CGPoint(x:150,y:200.0))
    }
    func pathForSixthStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 150.0, y:105.0), line: CGPoint(x:120,y:180.0))
    }
    func pathForSeventhStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 150.0, y:105.0), line: CGPoint(x:180,y:180.0))
    }
    func pathForEighthStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 150.0, y:200.0), line: CGPoint(x:120,y:275.0))
    }
    func pathForNinthStep()-> UIBezierPath{
        drawStep(move: CGPoint(x: 150.0, y:200.0), line: CGPoint(x:180,y:275.0))
    }
    
    override func draw(_ rect: CGRect) {
        UIColor.black.set()
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

extension DeadMan: Drawer {
    func drawStep(move: CGPoint, line: CGPoint) -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: move)
        path.addLine(to: line)
        path.lineWidth = 8.0
        return path
    }
}
