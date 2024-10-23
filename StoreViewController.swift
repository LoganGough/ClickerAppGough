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
        self.title = "Store"
        

        
        
            balance.text = "Balance: \(AppData.count)"
        
            
        
    }
    
    @IBAction func cookie1(_ sender: UIButton) {
        if(AppData.count >= 100){
            AppData.count = AppData.count - 100
            AppData.plus = AppData.plus + 1
            AppData.defaults.set(AppData.plus, forKey: "savePlus")
            balance.text = "Balance: \(AppData.count)"
            
        }
    }
    
    
    
    @IBAction func cookie5(_ sender: UIButton) {
        if(AppData.count >= 500){
            AppData.count = AppData.count - 500
                AppData.plus = AppData.plus + 5
            AppData.defaults.set(AppData.plus, forKey: "savePlus")
                AppData.cow = true
           
            
            balance.text = "Balance: \(AppData.count)"
        }
            
    }
    
    @IBAction func times2(_ sender: UIButton) {
        if(AppData.count >= 4000){
            AppData.count = AppData.count - 4000
            AppData.plus = AppData.plus * 2
            AppData.defaults.set(AppData.plus, forKey: "savePlus")
            balance.text = "Balance: \(AppData.count)"
        }
    }
    
    
    

}
