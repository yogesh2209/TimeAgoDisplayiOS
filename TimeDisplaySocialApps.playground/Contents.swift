//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let now = Date()
let pastDate = Date(timeInterval: -60 * 60 * 24, since: now)

extension Date {
    func timeAgoDisplay() -> String{
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        let minute = 60
        let hour = 60 * minute
        let day = 24 * hour
        let week = 7 * day
        
        if secondsAgo < minute {
            return "\(secondsAgo) seconds ago"
        }
        else if secondsAgo < hour {
            return "\(secondsAgo / minute) minutes ago"
        }
        else if secondsAgo < day {
             return "\(secondsAgo / hour) hours ago"
        }
        else if secondsAgo < week {
             return "\(secondsAgo / day ) days ago"
        }
        return "\(secondsAgo / week) weeks ago"
        
    }
}

pastDate.timeAgoDisplay()
