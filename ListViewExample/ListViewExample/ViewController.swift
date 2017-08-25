//
//  ViewController.swift
//  ListViewExample
//
//  Created by sintaiyuan on 8/25/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit
import ListView

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet { collectionView.dataSource = datasource }
    }
    
    let datasource = ListDatasource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datasource.register(
            cell: LabelCell.self,
            at: 0,
            setupClosure: { ($0 as! LabelCell).setup(with: "bla") }
        )

        datasource.register(
            cell: ButtonCell.self,
            at: 1,
            setupClosure: { ($0 as! ButtonCell).setup(with: "bla") }
        )
        
        datasource.register(nib: NibCell.nib, for: collectionView, cell: NibCell.self, at: 2) {
            ($0 as! NibCell).setup(with: "bla")
        }
    }
}

