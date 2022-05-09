import UIKit
import Darwin
import Foundation

protocol FirstProtocol{
    func getSecond()
    func getFiveHours()
    func getOneHour()
    func getFifteenMinutes()
    func getOneMinute()
}


enum Status: String, CaseIterable {
    case yes = "Y"
    case off = "O"
    
}

let date = Date()
let calendar = Calendar.current
var hour = calendar.component(.hour, from: date)
var minute = calendar.component(.minute, from: date)
var second = calendar.component(.second, from: date)

var array : [String] = []

func getSecond(second: Int) -> [String] {
    _ = Status.yes.rawValue
    if second > 60 {
        NSException(name:NSExceptionName(rawValue: "name"), reason:"reason", userInfo:nil).raise()
    }else{
        if  second % 2 == 0 {
            let str = Status.yes.rawValue
            array.append(str)
        } else{
            let str = Status.off.rawValue
            array.append(str)
        }
    }
    return array
}

func getFiveHours(hour: Int) -> [String]{

    if hour > 5{
    for _ in 1 ... hour/5{
            array.append(Status.yes.rawValue)
    }
    if hour / 5 < 4 {
        for _ in 1 ... 4 - (hour/5){
            array.append(Status.off.rawValue)
        }
    }
    }else{
        for _ in 1 ... 4{
            array.append(Status.off.rawValue)
        }
    }
    return array
}

func getOneHor(hour: Int) -> [String]{
    if (hour % 5) > 0 {
    for _ in 1 ... hour % 5{
        array.append(Status.yes.rawValue)
    }
    
    if 5 - (hour % 5) > 0 {
        for _ in 1 ... (4 - (hour % 5)){
            array.append(Status.off.rawValue)
        }
    }
    }
    return array
}

func getFifteenMinutes(minutes: Int) -> [String]{
    if minutes > 0 {
    for _ in 1 ... (minutes / 5){
        array.append(Status.yes.rawValue)
    }
    
    if 11 - (minutes / 5) > 0 {
        for _ in 1 ... (11 - (minutes / 5)){
            array.append(Status.off.rawValue)
        }
    }
    }
    return array
}

func getOneMinute(minutes: Int) -> [String]{
    if minutes != 0 {
        for _ in 1 ... (minutes % 5){
                array.append(Status.yes.rawValue)
            }
        for _ in 1 ... 4 - (minutes % 5){
                array.append(Status.off.rawValue)
            }
    }else{
        for _ in 1 ... 4{
                array.append(Status.off.rawValue)
            }
    }
    return array
}



getSecond(second: second)
getFiveHours(hour: hour)
getOneHor(hour: hour)
getFifteenMinutes(minutes: minute)
getOneMinute(minutes: minute)
print(23%5)
print(array)
