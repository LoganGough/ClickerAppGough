//
//  ViewController.swift
//  ClickerAppGough
//
//  Created by LOGAN GOUGH on 9/25/24.
//
class AppData{
    static var count = 0
    static var plus = 1
    static var cow = false
}



import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func cliker(_ sender: UITapGestureRecognizer) {
        AppData.count+=AppData.plus
        var blah = "\(AppData.count)"
        label.text = blah
        
    }
    

}

