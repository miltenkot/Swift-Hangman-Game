//
//  Drawer.swift
//  szubienica
//
//  Created by Bartłomiej Lańczyk on 30/04/2021.
//  Copyright © 2021 miltenkot. All rights reserved.
//

import UIKit

protocol Drawer {
    func drawStep(move: CGPoint, line: CGPoint) -> UIBezierPath
}
