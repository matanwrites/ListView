//
//  GridDatasource.swift
//  ListView
//
//  Created by sintaiyuan on 8/25/17.
//  Copyright © 2017 taiyungo. All rights reserved.
//

import UIKit


public typealias CellType = String


open class ListDatasource : NSObject {
    public var cellForRow : [Int:CellType] = [:]
    public var setupClosures : [CellType:(ListCell)->Void] = [:]
    
    
    public func register(cell: ListCell.Type, at row: Int, setupClosure: @escaping (ListCell)->Void) {
        let cellType = cell.defaultReuseIdentifier
        cellForRow[row] = cellType
        setupClosures[cellType] = setupClosure
    }
    
    public func register(nib: UINib, for collectionView: UICollectionView, cell: ListCell.Type, at row: Int, setupClosure: @escaping (ListCell)->Void) {
        let cellType = cell.defaultReuseIdentifier
        cellForRow[row] = cellType
        setupClosures[cellType] = setupClosure
        collectionView.register(nib, forCellWithReuseIdentifier: cellType)
    }
}

extension ListDatasource : UICollectionViewDataSource {
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellForRow.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let type = cellForRow[indexPath.row]!
        let c = collectionView.dequeueReusableCell(withReuseIdentifier: type, for: indexPath) as! ListCell
        setupClosures[type]?(c)
        return c
    }
}

