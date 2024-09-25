//
//  StoreViewController.swift
//  ClickerAppGough
//
//  Created by LOGAN GOUGH on 9/25/24.
//

import UIKit

class StoreViewController: UIViewController {
    
    
    @IBOutlet weak var balance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
            balance.text = "Balance: \(AppData.count)"
        
            
        
    }
    
    @IBAction func cookie5(_ sender: UIButton) {
        if(AppData.count >= 100){
            AppData.count = AppData.count - 100
            if(AppData.cow == false){
                AppData.plus = AppData.plus + 4
                AppData.cow = true
            }
            AppData.plus = AppData.plus + 5
            
            balance.text = "Balance: \(AppData.count)"
        }
            
    }
    
    @IBAction func times2(_ sender: UIButton) {
        if(AppData.count >= 2000){
            AppData.count = AppData.count - 500
            AppData.plus = AppData.plus * 2
            balance.text = "Balance: \(AppData.count)"
        }
    }
    
    
    

}
