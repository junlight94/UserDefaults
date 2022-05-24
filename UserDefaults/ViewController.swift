//
//  ViewController.swift
//  UserDefaults
//
//  Created by 이준영 on 2022/05/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userDefaultsLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UserDefualt 데이터 불러오기
        if let text = UserDefaults.standard.string(forKey: "text") {
            userDefaultsLabel.text = text
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        // UserDefualt 데이터 저장
        UserDefaults.standard.set(textField.text, forKey: "text")
        // Label에 TextField.text 표시
        userDefaultsLabel.text = textField.text
    }
    
}

