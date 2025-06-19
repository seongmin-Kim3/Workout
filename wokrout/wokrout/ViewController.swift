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

        // 여기서는 조건만 맞으면 로그인 성공으로 처리
        if email == "test@example.com" && password == "1234" {
            showAlert("로그인 성공!") {
                self.performSegue(withIdentifier: "toMain", sender: nil)
            }
        } else {
            showAlert("로그인 정보가 올바르지 않습니다.")
        }
    }

    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        // 회원가입 화면으로 이동
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
