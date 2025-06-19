import UIKit

class RehabPartSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func neckButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "neck")
    }

    @IBAction func wristButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "wrist")
    }

    @IBAction func waistButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "waist")
    }

    @IBAction func shoulderButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "shoulder")
    }

    @IBAction func ankleButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "ankle")
    }

    @IBAction func lowerBodyButtonTapped(_ sender: UIButton) {
        openYouTubeLink(for: "lowerBody")
    }

    func openYouTubeLink(for part: String) {
        let urlString: String

        switch part {
        case "neck":
            urlString = "https://youtube.com/shorts/aDbqk7JbpEs?si=XBlF9swayEIuKNAa"
        case "wrist":
            urlString = "https://youtu.be/B7STAq6LjgA?si=oBB6pR50Yd2Mm-7c"
        case "waist":
            urlString = "https://youtu.be/KV0FesxC9Sk?si=nHyA-YFivbOl54xJ"
        case "shoulder":
            urlString = "https://youtu.be/SAF0F6quKzI?si=eAw_2pdJcHUdEuf0"
        case "ankle":
            urlString = "https://youtu.be/x83MgTZMVUU?si=VffL-Mbev8bVS2Fh"
        case "lowerBody":
            urlString = "https://youtu.be/YIaJWBmGSoc?si=o_BYao9xeqDkf9vn"
        default:
            return
        }

        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
}
