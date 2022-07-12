//
//  SegmentedViewController.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/12.
//

import UIKit

enum AppleDevice {
    case iPhone
    case iPad
    case watch
    case mac
    case airpod
}

enum Segcontrol: Int {
    case first = 0
    case second = 1
    case third = 2
}



class SegmentViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        didSegmentedControlValueChanged(segmentedControl)
    }
    
    
    @IBAction func didSegmentedControlValueChanged(_ sender: UISegmentedControl) {
        
        if segmentedControl.selectedSegmentIndex == Segcontrol.first.rawValue {
            resultLabel.text = "첫번째"
            
        }
//
//        // switch 사용
//        switch sender.selectedSegmentIndex {
//        case 0:
//            resultLabel.text = "첫번째"
//        case 1:
//            resultLabel.text = "두번째"
//        case 2:
//            resultLabel.text = "세번째"
//        default:
//            resultLabel.text = ""
//        }
//
    }
    



}
