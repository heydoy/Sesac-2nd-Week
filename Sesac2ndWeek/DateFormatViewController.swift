//
//  DateFormatViewController.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/14.
//

import UIKit

class DateFormatViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // DateFormatter : 알아보기 쉬운 날짜 + 시간대 (2022년 07월 14일 7시 10분 05초= yyyy년 MM월 dd일 hh시 mm분 ss초 )
        
        let format = DateFormatter()
        format.dateFormat = "yy년 M월 d일"
        //format.locale
        let result = format.string(from: Date())
        // Date()는 현재시간이 나옴
        print(result, Date())
        
        let word  = "22년 3월 2일"
        let dataResult = format.date(from: word)
        
        print(dataResult)
        
        
    }
    


}
