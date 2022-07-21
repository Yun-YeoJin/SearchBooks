

import UIKit

class SearchDetailViewController: UIViewController {

    @IBOutlet weak var goToWebButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        goToWebButton.setTitle("웹화면으로 이동", for: .normal)
       
    }
    
    @IBAction func goToWebButtonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "SearchDetail", bundle: nil)
        
        let vc = sb.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        
        self.navigationController?.pushViewController(vc, animated: true) //push형식으로 만들기
        
    }
    
}
