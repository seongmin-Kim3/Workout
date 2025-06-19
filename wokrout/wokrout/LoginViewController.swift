import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.keyboardType = .emailAddress
        passwordTextField.isSecureTextEntry = true
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert("이메일과 비밀번호를 모두 입력해주세요.")
            return
        }

        // 🔑 UserDefaults에서 저장된 값 불러오기
        let savedEmail = UserDefaults.standard.string(forKey: "userEmail")
        let savedPassword = UserDefaults.standard.string(forKey: "userPassword")

        // ✅ 저장된 정보와 입력값 비교
        if email == savedEmail && password == savedPassword {
            showAlert("로그인 성공!") {
                // 🎯 알림창 닫힌 후 약간의 지연을 두고 안전하게 화면 전환
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    self.performSegue(withIdentifier: "toMain", sender: nil)
                }
            }
        } else {
            showAlert("로그인 정보가 올바르지 않습니다.")
        }
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignUp", sender: nil)
    }
    
    func showAlert(_ message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default) { _ in
            completion?()
        })
        present(alert, animated: true)
    }
}
