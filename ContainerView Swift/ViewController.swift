//
//  ViewController.swift
//  ContainerView Swift
//
//  Created by Pablo Caselas on 2/3/15.
//  Copyright (c) 2015 Solvver Solutions S.L. All rights reserved.
//

import UIKit

protocol OptionsDelegate{
    func setOptionsLabel(option:NSString)
}

class ViewController: UIViewController,OptionsDelegate {

    @IBOutlet weak var exampleLabel: UILabel!
    
    @IBOutlet weak var firstContainer: UIView!
    @IBOutlet weak var secondContainer: UIView!
    
    @IBAction func showFirstContainer(sender: AnyObject) {
        firstContainer.hidden = false
        secondContainer.hidden = true
    }
    
    @IBAction func showSecondContainer(sender: AnyObject) {
        
        firstContainer.hidden = true
        secondContainer.hidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        firstContainer.hidden = true
        secondContainer.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setOptionsLabel(option: NSString) {
        exampleLabel!.text = option
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "first"){
            var firstVC = segue.destinationViewController as FirstViewController
            
            firstVC.delegate = self
        }
        else{
            var secondVC = segue.destinationViewController as SecondViewController
            
            secondVC.delegate = self
        }
        
    }


}

