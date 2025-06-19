import UIKit

class SplitSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func twoSplitTapped(_ sender: UIButton) {
        openYouTube(for: "2분할")
    }

    @IBAction func threeSplitTapped(_ sender: UIButton) {
        openYouTube(for: "3분할")
    }

    @IBAction func fourSplitTapped(_ sender: UIButton) {
        openYouTube(for: "4분할")
    }

    @IBAction func fiveSplitTapped(_ sender: UIButton) {
        openYouTube(for: "5분할")
    }

    func openYouTube(for splitType: String) {
        let urlString: String

        switch splitType {
        case "2분할":
            urlString = "https://youtu.be/atwiUS5RJ30?si=gsjqHHfQx5YwZXo8"
        case "3분할":
            urlString = "https://youtu.be/PfibseV_kus?si=mlZjrb2iX-qLNaxt"
        case "4분할":
            urlString = "https://youtu.be/pTZeHRsb0Lw?si=FJYObwC58c3Uev6B"
        case "5분할":
            urlString = "https://youtube.com/shorts/iXLn9teM2uc?si=uJm9Jw8yt4RUIZOg"
        default:
            return
        }

        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}
