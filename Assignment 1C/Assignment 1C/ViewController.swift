//
//  ViewController.swift
//  Assignment 1C
//
//  Created by samfo on 5/7/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//  Sam Fox

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UITextView!
    @IBOutlet weak var daily_pay: UITextField!
    @IBOutlet weak var number_of_days: UITextField!
    var num_days = 0,
        daily_pay_array: [Int] = [],
        total_up_to_day: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        let dPay = Int(daily_pay.text!)!
        num_days = Int(number_of_days.text!)!
        
        display.text = ""
        
        // Calculate values
        var i = 0,
            pay = dPay
        while i<num_days {
            daily_pay_array.append(pay)
            var total = pay
            if i>0 {
                total = total_up_to_day[i-1] + pay
            }
            total_up_to_day.append(total)
            // Increment values
            pay = pay * 2
            i = i + 1
        }
        
        let display_string = create_display_string(MONTH_LEN: num_days, daily_pay: daily_pay_array, total_up_to_day: total_up_to_day)
        display.text = display_string
    }
}

