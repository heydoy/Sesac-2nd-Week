//
//  TransitionFirstViewController.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/15.
//

import UIKit

class TransitionFirstViewController: UIViewController {
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1- \(#function)")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("1- \(#function)")
        
        randomNumberLabel.text = "\(Int.random(in: 1...100))"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("1- \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("1- \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("1- \(#function)")
    }
    
    
    // actions
    
    @IBAction func unwindTransitionFirstVC(unwindSegue: UIStoryboardSegue) {
        
        
        
        
    }
}
