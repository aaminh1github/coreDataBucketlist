//
//  AddViewController.swift
//  BucketList
//
//  Created by amnah alhwaiml on 14/05/1443 AH.
//

import UIKit
import CoreData

class AddViewController: UIViewController {
    
    
    @IBOutlet weak var iTextField: UITextField!
    var delegate: AddItemViewControllerDelegate?
 
   
    var item: String?
    var indexPath: NSIndexPath?
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
        
    }
    
    
    @IBAction func saveButtonPresswd(_ sender: UIBarButtonItem) {
        guard let itemTxt = iTextField.text else { return }
        delegate?.itemSaved(by: self, with: itemTxt, at: indexPath)
    }
  
   
//    @IBAction func DelateButtonPressed(_ sender: UIButton) {
//        delegate?.delate( at: indexPath)
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        iTextField.text = item

        // Do any additional setup after loading the view.
    }
  

    

}
