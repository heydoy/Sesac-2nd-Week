//
//  EmotionDiaryViewCntroller.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/11.
//

import UIKit

class EmotionDiaryViewCntroller: UIViewController {
    // MARK: - Properties
    
    let textArray: [String] =
    ["행복해", "사랑해", "좋아해", "당황해", "속상해",
    "우울해", "심심해", "삐뚤해", "깔끔해"]
    
    var tapCountArray: [Int] = Array(repeating: 0 , count: 9)
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var sixthButton: UIButton!
    @IBOutlet weak var seventhButton: UIButton!
    @IBOutlet weak var ninethButton: UIButton!
    
    @IBOutlet weak var eighthButton: UIButton!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var ninethLabel: UILabel!
    
    
    @IBOutlet weak var listButton: UIButton!
    
    
    var labelArray: [UILabel] {
        [ firstLabel, secondLabel, thirdLabel,
        fourthLabel, fifthLabel, sixthLabel,
        seventhLabel, eighthLabel, ninethLabel]
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        listButton.setTitle("", for: .normal)
    }
    
    // MARK: - Actions

    @IBAction func didButtonTapped(_ sender: UIButton) {
        switch sender {
        case firstButton :
            tapCountArray[0] += 1
        case secondButton :
            tapCountArray[1] += 1
        case thirdButton :
            tapCountArray[2] += 1
        case fourthButton :
            tapCountArray[3] += 1
        case fifthButton :
            tapCountArray[4] += 1
        case sixthButton :
            tapCountArray[5] += 1
        case seventhButton :
            tapCountArray[6] += 1
        case eighthButton :
            tapCountArray[7] += 1
        case ninethButton :
            tapCountArray[8] += 1
            
        default:
            fatalError()
        }
        setLabel()
        showAlertController()
        
    }
    
    // MARK: - Helpers
    func setLabel() {
        for (index, item) in labelArray.enumerated() {
            item.text = "\(textArray[index]) \(tapCountArray[index])"
        }
    }
    
    func showAlertController() {
        // 1. 흰 바탕 : UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "메시지입니다.", preferredStyle: .alert)
        
        // 2. 버튼 만들기 : UIAlertAction
        // 핸들러는 기능을 연결하는 역할. Closure
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "취소", style: .destructive, handler: nil)
        let web = UIAlertAction(title: "복사", style: .default, handler: nil)
        
        // 3. 바탕에 버튼 붙이기
        // 버튼은 추가한 순서대로 붙는다.
        alert.addAction(ok)
        alert.addAction(web)
        alert.addAction(cancel)
        
        // 4. 화면에 띄우기
        present(alert, animated: true, completion: nil)
        
        
    }
    


}
