// Definte globals
var MONTH_LEN = 31,
daily_pay: [Int] = [],
total_up_to_day: [Int] = []


// Function that prints table
func print_pay() {
    var day : Int,
        days_pay : Int,
        total_pay : Int,
        row : String
    print("Day | Day's pay     |  Total  ")
    print("----|---------------|---------")
    for i in 0..<MONTH_LEN {
        day = i + 1
        days_pay = daily_pay[i]
        total_pay = total_up_to_day[i]
        row = String(day) + "  " //+ "   |  " + String(days_pay) + ""
        if day < 10 {
            row = row + " "
        }
        row = row + "|  " + String(days_pay)
        // Tally number of digits to format table
        var digits = 1,
            tmp = days_pay
        while tmp / 10 != 0 {
            digits = digits + 1
            tmp = tmp / 10
        }
        var num_spaces = 13 - digits
        // Append those spaces
        for j in 0..<num_spaces {
            row = row + " "
        }
        row = row + "|  " + String(total_pay)
        print(row)
    }
}


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


