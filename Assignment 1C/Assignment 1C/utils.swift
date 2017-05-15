// Sam Fox
// Assignment 1C

import Foundation

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
func create_display_string(MONTH_LEN: Int, daily_pay: [Int], total_up_to_day: [Int]) -> String {
    var day : Int,
        days_pay : String,
        total_pay : String,
        row : String,
        str: String = ""
    str += "Day | Day's pay     |   Total\n"
    // Iterate to generate one row at a time
    for i in 0..<MONTH_LEN {
        day = i + 1
        days_pay = cents_to_dollar(cents: daily_pay[i])
        total_pay = cents_to_dollar(cents: Int(total_up_to_day[i]))
        row = "\n" + String(day) + "      "
        if day < 10 {
            row = row + " "
        }
        row = row + "  \(days_pay)"
        // Format the right number of spaces so it lines up
        let digits = days_pay.characters.count
        let num_spaces = 17 - digits
        // Append those spaces
        if num_spaces < 2 {
            row = row + "  "
        }
        else {
            for _ in 0..<num_spaces {
                row = row + " "
            }
        }
        row = row + "  \(total_pay)\n"
        str += row
    }
    return str
}
