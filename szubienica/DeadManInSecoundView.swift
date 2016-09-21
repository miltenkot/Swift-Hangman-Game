//
//  DeadManInSecoundView.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 21.09.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit

class DeadManInSecoundView: DeadMan {
   public struct Holder {
        static var timesCalled = 0
    }
    
    override func draw(_ rect: CGRect) {
       
        UIColor.black.set()
        switch Holder.timesCalled {
        case 1:
             pathForFirstStep().stroke()
        case 2:
            pathForSecoundStep().stroke()
        case 3:
               pathForThirdStep().stroke()
        case 4:
           pathForFourthStep().stroke()
        case 5:
          pathForFifthStep().stroke()
        case 6:
             pathForSixthStep().stroke()
        case 7:
               pathForSeventhStep().stroke()
        case 8:
            
              pathForEighthStep().stroke()
        case 9:
              pathForNinthStep().stroke()
            
        default:
            break
        }
        
       Holder.timesCalled += 1
    
        
        
       
        
      
    

    }
 

}
