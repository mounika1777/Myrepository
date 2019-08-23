//
//  ViewController.swift
//  MultiViewApp
//
//  Created by apple on 31/07/19.
//  Copyright © 2019 DBS. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textfield.delegate=self
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title="first screen"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.navigationItem.title=nil
        if segue.identifier=="mySegue1"{
            print("hi")
            let s=segue.destination as! SecondViewController
            s.pass = self.textfield.text
        }
    }


}

