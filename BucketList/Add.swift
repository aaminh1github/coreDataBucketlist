//
//  Add.swift
//  BucketList
//
//  Created by amnah alhwaiml on 14/05/1443 AH.
//

import Foundation

protocol AddItemViewControllerDelegate: AnyObject{
    func itemSaved(by controller: AddViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddViewController)
}

    

   


