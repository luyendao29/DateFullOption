//
//  ViewController.swift
//  TimeInterVal
//
//  Created by Boss on 4/15/20.
//  Copyright © 2020 LuyệnĐào. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let date = "Aug 3, 2019"
    let oldDate = "April 15 , 2020"

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        convertToTimeStamp()
//        convertToDaTe()
        let date = "Aug 3, 2019"
//        print(stringFromTimeInterval(interval: date))
        convertToTimeStamp()
    
    }
    
    func getStringDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd , yyyy"
        let now = Date()
        let dateString = formatter.string(from:now)
        NSLog("%@", dateString)
        return dateString
    }
    
    func convertToTimeStamp() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        let date1 = dateFormatter.date(from: "Apr 15, 2015")
        let date2 = dateFormatter.date(from: getStringDate())
        let dateStamp1: TimeInterval = date1!.timeIntervalSince1970
        let dateStamp2: TimeInterval = date2!.timeIntervalSince1970
        
        
        
        if let date1 = date1, let date2 = date2 {
            
            let day0 = Calendar.current.dateComponents([.day], from: date1, to: date2)
            
            print("%@", day0.day ?? "")
            
            var componentsNow = Calendar.current.dateComponents([.month, .day, .year], from: date1, to: date2)
            if let month = componentsNow.month, let day = componentsNow.day, let year = componentsNow.year {
                let retult = "\(month):\(day):\(year)"
                print(retult)
                if year == 0 {
                    print("Thời gian còn lại \(day) ngày, \(month) tháng")
                }
            }
        }
    }


    // case test display
//    d = 0,
//    d = 0, m = 0
//    d = 0, y = 0
//    d = 0, m = 0, y = 0
}

