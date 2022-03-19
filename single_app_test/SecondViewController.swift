import UIKit

class SecondViewController: UIViewController {
    /// 入力された文字列を表示するラベル
    @IBOutlet weak var inputtedTextLabel: UILabel!
    /// 入力された文字列を格納しておくプロパティ
    var inputtedText: String?

    @IBAction func didTapTransitionButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ThirdViewController", sender: nil)

    }
    
    
    /// 画面読み込み完了後処理
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // inputtedTextLabelの表示をinputtedTextの値にする
        self.inputtedTextLabel.text = self.inputtedText
    }
}
