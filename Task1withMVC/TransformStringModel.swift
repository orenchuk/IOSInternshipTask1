//
//  TransformStringModel.swift
//  Task1withMVC
//
//  Created by Yevhen Orenchuk on 6/10/18.
//  Copyright © 2018 Yevhenii Orenchuk. All rights reserved.
//

extension String {
    func getIndex(offset: Int) -> String.Index? {
        return offset >= 0 && offset < self.count ? self.index(self.startIndex, offsetBy: offset) : nil
    }
}

func transform(from: String, to: String) -> String {
    var strFrom = from
    var result = ""
    
    while strFrom != to {
        var diff = strFrom.count - to.count
        
        for (index, value) in to.enumerated() {
            diff = strFrom.count - to.count
            if diff < 0 {
                if let i = strFrom.getIndex(offset: index), value != strFrom[i] {
                    strFrom.insert(value, at: i)
                    result.append("i")
                }
            } else {
                if let i = strFrom.getIndex(offset: index), value != strFrom[i] {
                    strFrom.remove(at: i)
                    strFrom.insert(value, at: i)
                    result.append("s")
                }
            }
        }
        
        if diff > 0 {
            for _ in 0..<abs(diff) {
                strFrom.removeLast()
                result.append("d")
            }
        }
        
    }
    
    return result
}
