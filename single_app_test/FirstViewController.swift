//
//  ViewController.swift
//  single_app_test
//
//  Created by mt-square.toba on 2022/03/15.
//  Copyright © 2022 takuyaOba. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var count: Int = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func tapButton(_ sender: Any) {
        self.count = self.count + 1
        self.label.text = "カウント：\(self.count)"
        
        let remainder: Int = self.count % 2
        if remainder == 0 {
            self.label.textColor = UIColor.red
        } else {
            self.label.textColor = UIColor.blue
        }
        
    }
    
    @IBAction func didTapTransitionButton(_ sender: Any) {
        let text = textField.text
        self.performSegue(withIdentifier: "SecondViewController", sender: text)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = "カウント：\(self.count)"
        super.viewDidLoad()
        self.label.textColor = UIColor.red
    }
    
    /// 画面遷移イベントをフックする
      /// - Parameters:
      ///   - segue: segue
      ///   - sender: パラメータ
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueからSecondViewControllerを取得する
        if let secondViewController = segue.destination as? SecondViewController {
            // senderをStringにキャストする
            let paramater = sender as? String
            // SecondViewControllerのinputtedTextにparamaterを設定する
            secondViewController.inputtedText = paramater
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

