
import UIKit

class SearchBooksCollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var bookBackgroundView: UIView!
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var bookRateLabel: UILabel!
    
    @IBOutlet weak var bookImageView: UIImageView!
    
    func configureCell(data: Books) {
        
        bookTitleLabel.font = .boldSystemFont(ofSize: 16)
        bookTitleLabel.textColor = .white
        bookRateLabel.font = .boldSystemFont(ofSize: 13)
        bookRateLabel.textColor = .white
        bookTitleLabel.text = data.title
        bookRateLabel.text = "\(data.rate)"
        bookBackgroundView.layer.cornerRadius = 20
        bookBackgroundView.clipsToBounds = true
      
    }
    
}
