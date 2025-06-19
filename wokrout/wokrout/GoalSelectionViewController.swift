import UIKit

class GoalSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // ✅ 이미 저장된 목표가 있다면 콘솔에 출력 (선택사항)
        if let savedGoal = UserDefaults.standard.string(forKey: "userGoal") {
            print("저장된 운동 목표: \(savedGoal)")
        }
    }

    // 👉 근력증가 버튼
    @IBAction func muscleGainTapped(_ sender: UIButton) {
        saveGoalAndProceed(goal: "근력증가", segueIdentifier: "toRoutine")
    }

    // 👉 체중감량 버튼
    @IBAction func weightLossTapped(_ sender: UIButton) {
        saveGoalAndProceed(goal: "체중감량", segueIdentifier: "toDiet")
    }

    // 👉 재활 치료 버튼
    @IBAction func rehabTapped(_ sender: UIButton) {
        saveGoalAndProceed(goal: "재활 치료", segueIdentifier: "toRehab")
    }

    /// 목표 저장 + 다음 화면 이동
    func saveGoalAndProceed(goal: String, segueIdentifier: String) {
        // ✅ 선택한 목표 저장
        UserDefaults.standard.set(goal, forKey: "userGoal")

        // ✅ 알림 후 화면 전환
        let alert = UIAlertController(title: "목표 선택 완료", message: "선택한 목표: \(goal)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default) { _ in
            self.performSegue(withIdentifier: segueIdentifier, sender: nil)
        })
        present(alert, animated: true)
    }
}
