//
//  ViewController.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenView.layer.cornerRadius = 20
        greenView.clipsToBounds = false
        
        greenView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner]

        
        
        
        
    }


}

