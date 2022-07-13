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
    
    @IBOutlet weak var firstAnniversaryDate: UILabel!
    @IBOutlet weak var secondAnniversaryDate: UILabel!
    @IBOutlet weak var thirdAnniversaryDate: UILabel!
    @IBOutlet weak var fourthAnniversaryDate: UILabel!
    
    
    
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAttribute()
    }
    // MARK: - Actions
    
    
    
    
    
    // MARK: - Helpers
    func setAttribute() {
        imageViewArray.forEach {
            $0.layer.cornerRadius = 20
            $0.clipsToBounds = true
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