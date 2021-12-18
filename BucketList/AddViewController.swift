//
//  AddViewController.swift
//  BucketList
//
//  Created by amnah alhwaiml on 14/05/1443 AH.
//

import UIKit

class AddViewController: UITableViewController {
    
    
    @IBOutlet weak var iTextField: UITextField!
    var delegate: AddItemViewControllerDelegate?
 
   
    var item: String?
    var indexPath: NSIndexPath?
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem){
        delegate?.cancelButtonPressed(by: self)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem){
        guard let itemTxt = iTextField.text else { return }
        delegate?.itemSaved(by: self, with: itemTxt, at: indexPath)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        iTextField.text = item

        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    

}
