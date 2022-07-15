//
//  TransitionSecondViewController.swift
//  Sesac2ndWeek
//
//  Created by Doy Kim on 2022/07/15.
//

import UIKit

class TransitionSecondViewController: UIViewController {
    
    @IBOutlet weak var quoteTextView: UITextView!
    /**
     1. 앱을 키면 데이터를 가지고 와서 텍스트뷰에 보여주어야 된다.
     2. 바뀐 데이터를 저장해주어야 한다.
        ==> UserDefaults 는 key-value 형태로 저장되어 있다.
     **/
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countUpButton: UIButton!
    
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("2- \(#function)")
        
        // 가져오기
        if UserDefaults.standard.string(forKey: "quote") != nil {
            quoteTextView.text = UserDefaults.standard.string(forKey: "quote")
        } else {
            quoteTextView.text = "새로 입력하세요"
        }
        
        print(UserDefaults.standard.string(forKey: "phoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))
        
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "count"))"
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2- \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("2- \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("2- \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("2- \(#function)")
    }
    
    @IBAction func didSaveButtonTapped(_ sender: UIButton) {
        UserDefaults.standard.set(quoteTextView.text, forKey: "quote")
        
    }
    
    @IBAction func didCountUpButtonTapped(_ sender: UIButton) {
        
        let getCount = UserDefaults.standard.integer(forKey: "count") + 1
        countLabel.text = "\(getCount)"
        UserDefaults.standard.set(getCount, forKey: "count")
        
    }
    
    


}
