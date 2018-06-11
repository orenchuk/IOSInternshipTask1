//
//  ViewController.swift
//  Task1withMVC
//
//  Created by Yevhen Orenchuk on 6/10/18.
//  Copyright © 2018 Yevhenii Orenchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stringFromField: UITextField!
    @IBOutlet weak var stringToField: UITextField!
    @IBOutlet weak var resultField: UILabel!
    
    @IBAction func showResult() {
        if let strFrom = stringFromField.text, let strTo = stringToField.text {
            if strFrom == strTo {
                resultField.text = "They're already equal"
            } else {
                resultField.text = transform(from: strFrom, to: strTo)
            }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

