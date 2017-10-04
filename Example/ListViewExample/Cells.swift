//
//  LabelCell.swift
//  ListViewExample
//
//  Created by sintaiyuan on 8/25/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit
import MTListView



class LabelCell : ListCell {
    @IBOutlet weak var label: UILabel!
    
    func setup(with data: String) {
        label.text = data
    }
}

class ButtonCell : ListCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        print("from coder \(aDecoder)")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        print("from frame \(frame)")
    }
    
    @IBOutlet weak var button: UIButton!
    func setup(with data: String) {
        button.setTitle(data, for: .normal)
    }
}

class NibCell : ListCell {
    @IBOutlet weak var textField: UITextField!
    
    static let nib = UINib(nibName: "NibCell", bundle: Bundle(for: NibCell.self))
    
    func setup(with data: String) {
        textField.placeholder = "nib!"
    }
}
