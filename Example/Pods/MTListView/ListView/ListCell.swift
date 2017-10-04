//
//  ListCell.swift
//  ListView
//
//  Created by sintaiyuan on 8/25/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit

internal protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

open class ListCell : UICollectionViewCell, ReusableView {
    open class var defaultReuseIdentifier: String {
        let nameOfModule = String(reflecting: self).components(separatedBy: ".").first!
        let components = NSStringFromClass(self).components(separatedBy: ".")
        
        if components.first! == nameOfModule {
            return components[1]
        } else {
            return components[0]
        }
    }
}
