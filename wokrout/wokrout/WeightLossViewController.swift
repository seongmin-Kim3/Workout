import UIKit

class WeightLossViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // 유산소 버튼 클릭 시
    @IBAction func cardioButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "cardio")
    }

    // 복부 운동 버튼 클릭 시
    @IBAction func absButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "abs")
    }

    // 유튜브 링크 열기 함수
    func openYouTubeLink(for type: String) {
        var urlString: String = ""

        switch type {
        case "cardio":
            urlString = "https://youtu.be/CYcLODSeC-c?si=XChFznU7-2dsViX0" // 유산소 예시
        case "abs":
            urlString = "https://youtube.com/shorts/fhETRkCtpWo?si=yZNt56EGHJ1fBVq7" // 복부 운동 예시
        default:
            return
        }

        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}
