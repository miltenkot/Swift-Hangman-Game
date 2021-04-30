//
//  StringExtension.swift
//  szubienica
//
//  Created by Bartłomiej Lańczyk on 30/04/2021.
//  Copyright © 2021 miltenkot. All rights reserved.
//
import Foundation

extension String {
    public func rangesOfString(searchString:String, options: NSString.CompareOptions = [], searchRange:Range<Index>? = nil ) -> [Range<Index>] {
        if let range = range(of: searchString, options: options, range:searchRange) {
            let nextRange = Range(uncheckedBounds: (lower: index(range.lowerBound, offsetBy: 1), upper: endIndex))
            return [range] + rangesOfString(searchString: searchString, searchRange: nextRange)
        } else {
            return []
        }
    }
}
