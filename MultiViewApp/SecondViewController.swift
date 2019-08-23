//
//  SecondViewController.swift
//  MultiViewApp
//
//  Created by apple on 31/07/19.
//  Copyright © 2019 DBS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mylabel: UILabel!
    
    var pass:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = pass{
            name.count>0
            do{
                mylabel.text=name
            }
            catch{
                print("no msg is received")
            }
            
        }

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title="Second Screen"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
