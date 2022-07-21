

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        navigationItem.title = "도서검색화면(FullScreen)"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(xmarkButtonClicked))
       
    }
    
    @objc func xmarkButtonClicked() {
        self.dismiss(animated: true)
        
    }
    

}
