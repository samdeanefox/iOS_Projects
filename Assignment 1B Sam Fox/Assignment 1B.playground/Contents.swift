// Sam Fox
// Assignment 1B

import Foundation

// Definte globals
var MONTH_LEN = 31,
    daily_pay: [Int] = [],
    total_up_to_day: [Int] = []


//Function that formats cents to dollar amount
func cents_to_dollar(cents: Int) -> String {
    var cent_str = String(cents),
        num_digits = cent_str.characters.count
    
    if num_digits == 1 {
        return "$0.0\(cent_str)"
    }
    else if num_digits == 2 {
        return "$0.\(cent_str)"
    }
    
    let end = cent_str.index(cent_str.endIndex, offsetBy: -2)
    let dollars = cent_str.substring(to: end),
    cents = cent_str.substring(with:end..<cent_str.endIndex)
    return "$\(dollars).\(cents)"
}


// Function that prints table
func print_pay() {
    var day : Int,
        days_pay : String,
        total_pay : String,
        row : String
    print("Day | Day's pay      |  Total          ")
    print("----|----------------|-----------------")
    // Iterate to generate one row at a time
    for i in 0..<MONTH_LEN {
        day = i + 1
        days_pay = cents_to_dollar(cents: daily_pay[i])
        total_pay = cents_to_dollar(cents: Int(total_up_to_day[i]))
        row = String(day) + "  "
        if day < 10 {
            row = row + " "
        }
        row = row + "|  \(days_pay)"
        // Format the right number of spaces so it lines up
        let digits = days_pay.characters.count
        let num_spaces = 14 - digits
        // Append those spaces
        for j in 0..<num_spaces {
            row = row + " "
        }
        row = row + "|  \(total_pay)"
        print(row)
    }
}


// Runs the actual program
func run() {
    //Loop through days
    var i = 0,
        pay = 1
    while i<MONTH_LEN {
        // Append value to daily_pay
        daily_pay.append(pay)
        var total = 1
    
        // Total up to today = total to yesterday + today's pay
        if i>0 {
            total = total_up_to_day[i-1] + pay
        }
        total_up_to_day.append(total)
    
        // Increment
        pay = pay * 2
        i = i + 1
    }
    print_pay()
}

run()


