//
//  AnniversaryCalculaterViewController.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/13.
//

import UIKit

class AnniversaryCalculaterViewController: UIViewController {

    
    // MARK: - Properties
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    
    var imageViewArray: [UIImageView] {
        [ firstImageView, secondImageView,
        thirdImageView, fourthImageView]
    }
    
    @IBOutlet weak var firstCountLabel: UILabel!
    @IBOutlet weak var secondCountLabel: UILabel!
    @IBOutlet weak var thirdCountLabel: UILabel!
    @IBOutlet weak var fourthCountLabel: UILabel!
    
    var countLabelArray: [UILabel] {
        [ firstCountLabel,
          secondCountLabel,
          thirdCountLabel,
          fourthCountLabel
        ]
    }
    
    
    @IBOutlet weak var firstAnniversaryDate: UILabel!
    @IBOutlet weak var secondAnniversaryDate: UILabel!
    @IBOutlet weak var thirdAnniversaryDate: UILabel!
    @IBOutlet weak var fourthAnniversaryDate: UILabel!
    
    
    var dateLabelArray: [UILabel] {
        [ firstAnniversaryDate,
          secondAnniversaryDate,
          thirdAnniversaryDate,
          fourthAnniversaryDate]
    }
    
    
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAttribute()
    }
    // MARK: - Actions
    
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        
        print(sender.date)
        

        // 이미 라벨에 있는 날짜와 픽커날짜 차이 보여주기
        //setLabelWhenValueChanged(stringToDate(),pickedDate: sender.date)
        
        // 100일 200일 계산기
        showEvery100Days(pickedDate: sender.date)
        
        
    }
    
    
    
    
    // MARK: - Helpers
    func setAttribute() {
        imageViewArray.forEach {
            $0.layer.cornerRadius = 20
            $0.clipsToBounds = true
        }
    }
    
    func stringToDate() -> [Date] {
        var datetimeArray = [Date]()
        
        let formatter = DateFormatter()
        let string = "yyyy년 M월 d일"
        formatter.dateFormat = string
        formatter.locale = Locale(identifier: "ko")
        
        for i in 0..<dateLabelArray.count {
            guard let temp = formatter.date(from: dateLabelArray[i].text ?? "") else { return [Date]()  }
            datetimeArray.append(temp)
        }
        
        return datetimeArray
    }
    
    func setLabelWhenValueChanged(_ dateTimeArray: [Date], pickedDate: Date ) {
        
        
        for i in 0..<dateTimeArray.count {
            
            let countTime = Int(pickedDate.timeIntervalSince(dateTimeArray[i]))
            
            if countTime > 0 {
            countLabelArray[i].text = "D+\(countTime/86400)"
            } else {
                countLabelArray[i].text = "D\(countTime/86400)"
            }
        
        
        }
        
    }
    
    
    func showEvery100Days(pickedDate: Date) {
        for i in 0..<countLabelArray.count {
            countLabelArray[i].text = "D+\(100*(i+1))"
        }
        
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 m월 d일"
        
        
        
        for i in 0..<dateLabelArray.count {
            let anniversary = Calendar.current.date(byAdding: .day, value: 100*(i+1), to: pickedDate)!
            
            let convertStr = dateFormatter.string(from: anniversary)
            
            dateLabelArray[i].text = convertStr
            
        }
        
        
    }
    
    
    func dateFormatStyle(_ date: Date) -> String {
        let locale = Locale(identifier: "ko-KR")
        let result = date.formatted(.dateTime.locale(locale).day().month(.twoDigits).year())
        
        return result
        
        
    }
    
    func dateFomatterStyle(_ date: Date) -> String {
        let myDateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "yyyy년 M월 d일"
        myDateFormatter.locale = Locale(identifier:"ko_KR")
        let convertStr = myDateFormatter.string(from: date)
        
        return convertStr

    }


}
