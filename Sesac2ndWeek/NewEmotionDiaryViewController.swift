//
//  NewEmotionDiaryViewController.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/12.
//

import UIKit
enum emotion: Int, CaseIterable {
    case happy = 0
    case like = 1
    case love = 2
    case depress = 3
    case boring = 4
    case tired = 5
    case frustrate = 6
    case dull = 7
    case quiet = 8
    
    func showText() -> String {
        switch self {
        case .happy: return "행복해"
        case .like: return "좋아해"
        case .love: return "사랑해"
        case .depress: return "우울해"
        case .boring: return "지루해"
        case .tired: return "피곤해"
        case .frustrate: return "속상해"
        case .dull: return "그냥그래"
        case .quiet: return "조용해"
        }
    }
}



class NewEmotionDiaryViewController: UIViewController {
    let emotionsArray: [String] = [
        "기뻐해", "좋아해", "사랑해",
        "우울해", "심심해", "졸려해",
        "속상해", "소소해", "조용해"
    ]
    
    var emotionCountArray: [Int] = Array(repeating: 0, count: 9)
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var sixthButton: UIButton!
    @IBOutlet weak var seventhButton: UIButton!
    @IBOutlet weak var eighthButton: UIButton!
    @IBOutlet weak var ninethbutton: UIButton!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    @IBOutlet weak var seventhLabel: UILabel!
    @IBOutlet weak var eighthLabel: UILabel!
    @IBOutlet weak var ninethLabel: UILabel!
    
    
    
    
    
    
    
    
    var buttonArray: [UIButton] {
        [
            firstButton, secondButton, thirdButton,
            fourthButton, fifthButton, sixthButton,
            seventhButton, eighthButton, ninethbutton
        
        ]
    }
    
    var labelArray: [UILabel] {
        [
            firstLabel, secondLabel, thirdLabel,
            fourthLabel, fifthLabel, sixthLabel,
            seventhLabel, eighthLabel, ninethLabel
        ]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtonAttribute(buttonArray, labelArray)
    }
    
    @IBAction func didButtonTapped(_ sender: UIButton) {
        
        switch sender.tag {
        case emotion.happy.rawValue :
            emotionCountArray[sender.tag] += 1
            print(emotion.happy.showText())
            
        case emotion.like.rawValue :
            emotionCountArray[sender.tag] += 1
            
        case emotion.love.rawValue :
            emotionCountArray[sender.tag] += 1
            
        case emotion.depress.rawValue :
            emotionCountArray[sender.tag] += 1
            
        case emotion.boring.rawValue :
            emotionCountArray[sender.tag] += 1
            
        case emotion.tired.rawValue :
            emotionCountArray[sender.tag] += 1
            
        case emotion.frustrate.rawValue :
            emotionCountArray[sender.tag] += 1
            
        case emotion.dull.rawValue :
            emotionCountArray[sender.tag] += 1
            
        case emotion.quiet.rawValue :
            emotionCountArray[sender.tag] += 1
            
        default:
            fatalError()
        }
        //이거 하나만 해도 되지만..
        //emotionCountArray[sender.tag] += 1
        labelArray[sender.tag].text = setButtonTitle(sender.tag)
    }
    
    func setButtonAttribute(_ buttons: [UIButton], _ labels: [UILabel]){
        for i in 0...buttons.count-1 {
            let image = UIImage(named: "sesac_slime\(i+1)")?.withRenderingMode(.alwaysOriginal)
            buttons[i].setImage(image, for: .normal)
            labels[i].text = "\(emotionsArray[i]) \(emotionCountArray[i])"
            buttons[i].tag = i
        }
    }
    
    func setButtonTitle(_ i: Int) -> String{
        return "\(emotionsArray[i]) \(emotionCountArray[i])"
    }
    



}
