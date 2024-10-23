//
//  ThirdViewController.swift
//  ClickerAppGough
//
//  Created by LOGAN GOUGH on 10/22/24.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var imageView: UITextView!
    
    
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        var brb = AppData.defaults.array(forKey: "theArray")
        
            var blah = AppData.scoreArray[count].toString()
            imageView.text = blah
        
        
        
    }
    
    @IBAction func next(_ sender: Any) {
       
            count+=1
            var blah = AppData.scoreArray[count].toString()
            imageView.text = blah
        }
    
    
    
    @IBAction func previous(_ sender: Any) {
        
            count-=1
            
            var blah = AppData.scoreArray[count].toString()
            imageView.text = blah
        
    }
    
}
