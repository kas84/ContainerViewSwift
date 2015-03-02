//
//  SecondViewController.swift
//  ContainerView Swift
//
//  Created by Pablo Caselas on 2/3/15.
//  Copyright (c) 2015 Solvver Solutions S.L. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var delegate : OptionsDelegate? = nil

    @IBAction func setSecond(sender: AnyObject) {
        self.delegate?.setOptionsLabel("pushed button in second view controller")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
