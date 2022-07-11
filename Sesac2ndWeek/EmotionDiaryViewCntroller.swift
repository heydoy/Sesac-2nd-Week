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
    
    var tapCountArray: [Int] =
    [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
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
            setLabel()
        case secondButton :
            tapCountArray[1] += 1
            setLabel()
        case thirdButton :
            tapCountArray[2] += 1
            setLabel()
        case fourthButton :
            tapCountArray[3] += 1
            setLabel()
        case fifthButton :
            tapCountArray[4] += 1
            setLabel()
        case sixthButton :
            tapCountArray[5] += 1
            setLabel()
        case seventhButton :
            tapCountArray[6] += 1
            setLabel()
        case eighthButton :
            tapCountArray[7] += 1
            setLabel()
        case ninethButton :
            tapCountArray[8] += 1
            setLabel()
        default:
            fatalError()
        }
        
    }
    
    // MARK: - Helpers
    func setLabel() {
        for (index, item) in labelArray.enumerated() {
            item.text = "\(textArray[index]) \(tapCountArray[index])"
        }
    }

}
