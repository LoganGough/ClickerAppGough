//
//  ViewController.swift
//  ClickerAppGough
//
//  Created by LOGAN GOUGH on 9/25/24.
//
class AppData{
    static var count: Int = 0
    static var plus: Int = 1
    static var name: String = ""
    static var cow = false
    static var defaults = UserDefaults.standard
    static var blank = AppData.defaults.integer(forKey: "theCount")
    static var blat = AppData.defaults.integer(forKey: "savePlus")
    static var scoreArray = [Scores]()
    
}



import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var encoder = JSONEncoder()
    
    var decoder = JSONDecoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        func viewWillAppear(){
//            var blah = defaults.integer(forKey: "savePlus")
//            defaults.setValue(AppData.plus, forKey: "savePlus")
//            AppData.plus = blah
//        }
        
        AppData.plus = AppData.blat
        var blah = AppData.defaults.string(forKey: "name")
        self.title = blah
        
        AppData.defaults.array(forKey: "theArray")
    
       
        AppData.count = AppData.blank
        label.text = "\(AppData.count)"
        
        if let blahScore = AppData.defaults.data(forKey: "theArray"){
            if let decoded = try? decoder.decode([Scores].self, from: blahScore){
                AppData.scoreArray = decoded
            }
        }
        
        
    }
    
    
    
    @IBAction func cliker(_ sender: UITapGestureRecognizer) {
        
        AppData.count+=AppData.plus
        AppData.defaults.set(AppData.count, forKey: "theCount")
        label.text = ("\(AppData.defaults.integer(forKey: "theCount"))")
        
        
        
    }
    
    
      
    @IBAction func nameButton(_ sender: UIButton) {
        
        var temp = textField1.text!
        AppData.name = temp
        AppData.defaults.set(temp,forKey: "name")
        self.title = temp
        
        
    }
    
    
        
    @IBAction func newButton(_ sender: UIButton) {
        var blah = Scores(name: AppData.name, score: AppData.count, mult: AppData.plus)
        AppData.scoreArray.append(blah)
        
        if let something = try? encoder.encode(AppData.scoreArray){
            AppData.defaults.set(something, forKey: "theArray")
        }
        self.title = ""
        AppData.defaults.set(0, forKey: "theCount")
        label.text = ("\(AppData.defaults.integer(forKey: "theCount"))")
        AppData.defaults.set("", forKey: "name")
        AppData.defaults.set(1, forKey: "savePlus")
        AppData.count = 0
        AppData.plus = 1
        
        
    }
    
    
}

