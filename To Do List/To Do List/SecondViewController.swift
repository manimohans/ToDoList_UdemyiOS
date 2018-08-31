//
//  SecondViewController.swift
//  To Do List
//
//  Created by Mani on 8/27/18.
//  Copyright © 2018 Mani. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemText: UITextField!
    @IBAction func AddItem(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(itemText.text!)
        } else {
            items = [itemText.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        itemText.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

