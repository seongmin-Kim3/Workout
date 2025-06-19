import UIKit

class BodyInfoViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        heightTextField.placeholder = "키(cm)"
        weightTextField.placeholder = "몸무게(kg)"
        heightTextField.keyboardType = .decimalPad
        weightTextField.keyboardType = .decimalPad
    }

    @IBAction func doneButtonTapped(_ sender: UIButton) {
        guard let heightText = heightTextField.text, !heightText.isEmpty,
              let weightText = weightTextField.text, !weightText.isEmpty else {
            showAlert("모든 항목을 입력해주세요.")
            return
        }

        // ✅ 신체정보 저장
        UserDefaults.standard.set(heightText, forKey: "userHeight")
        UserDefaults.standard.set(weightText, forKey: "userWeight")

        // ✅ 알림 → 확인 누르면 다음 화면으로 이동
        showAlert("신체정보가 저장되었습니다!") {
            self.performSegue(withIdentifier: "toGoal", sender: nil)
        }
    }

    func showAlert(_ message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default) { _ in
            completion?()
        })
        present(alert, animated: true)
    }
}
