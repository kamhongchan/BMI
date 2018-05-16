//
//  ViewController.swift
//  Calculator
//
//  Created by Kam Hong Chan on 16/5/2018.
//  Copyright © 2018年 Kam Hong Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var tips: UILabel!
    @IBOutlet weak var bmi: UILabel!
    
    @IBAction func submit(_ sender: Any) {
        let height = Double(self.height.text!)
        let weight = Double(self.weight.text!)
        
        if height == nil
        {
            tips.isHidden = false
            tips.text="請輸入身高"
        }
        else if weight == nil
        {
            tips.isHidden = false
            tips.text="請輸入體重"
        }
        else
        {
            let total = weight! / (height! * height!) * 10000
            
            tips.isHidden = true
            bmi.isHidden = false
            
            bmi.text = String(format: "%.2f",total)
            
            if 18.5 > total
            {
                tips.isHidden = false
                tips.text="體重過輕，要吃多點東西哦！"
            }
            else if total > 18.5 && total < 24
            {
                tips.isHidden = false
                tips.text="正常體重，要保持身材哦！"
            }
            else if total >= 24 && total <= 27
            {
                tips.isHidden = false
                tips.text="過重了，做運動了！"
            }
            else if total >= 27 && total <= 30
            {
                tips.isHidden = false
                tips.text="輕度肥胖，你還喝珍奶？"
            }
            else if total >= 30 && total <= 35
            {
                tips.isHidden = false
                tips.text="中度肥胖，鹽酥雞在等你！"
            }
            else if total == 18.5
            {
                tips.isHidden = false
                tips.text="正常體重，要保持身材哦！"
            }
            else if total == 24
            {
                tips.isHidden = false
                tips.text="過重了，做運動了！"
            }
            else if total == 27
            {
                tips.isHidden = false
                tips.text="輕度肥胖，你還喝珍奶？"
            }
            else if total == 30
            {
                tips.isHidden = false
                tips.text="中度肥胖，鹽酥雞在等你！"
            }
            else
            {
                tips.isHidden = false
                tips.text="重度肥胖"
            }
            
            
            view.endEditing(true)
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

