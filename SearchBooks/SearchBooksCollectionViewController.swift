


import UIKit
import Toast
import Kingfisher

//뒷배경 색상 변경폭 enum으로 만듦
enum SettingColor: Int, CaseIterable {
    case red, orange, lightGray, brown, blue, purple, green, indigo //index: 8개
    
    var bookBackgroundColor: UIColor {
        switch self {
        case .red: return .red
        case .orange: return .orange
        case .lightGray: return .lightGray
        case .brown: return .brown
        case .blue: return .blue
        case .purple: return .purple
        case .green: return .green
        case .indigo: return .systemIndigo

        }
    }
}

class SearchBooksCollectionViewController: UICollectionViewController {


    var bookList = BookInfo() // 인스턴스화 시켜준
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        //컬렉션뷰의 셀 크기, 셀 사이 간격 등 설정
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 10 //collectionViewCell 사이 간격
        //device를 여백 하나도 꽉채움 (uiscreen.main.bounds.width)
        let width = UIScreen.main.bounds.width - (spacing * 3) //여백이 3개라 spacing * 3
        
        layout.itemSize = CGSize(width: width / 2, height: (width / 2) * 1.2) //컬렉션뷰 셀의 크기 설정 (높이, 너비)
        layout.scrollDirection = .vertical //컬렉션뷰 스크롤 방향 설정
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing) // 상,하,좌,우 여백 설정
        layout.minimumLineSpacing = spacing //셀 사이의 간격
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout // 레이아웃 선언을 해줘야 동작함.
        
}
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.books.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
 
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchBooksCollectionViewCell", for: indexPath) as! SearchBooksCollectionViewCell
        let data = bookList.books[indexPath.item]
        cell.configureCell(data: data)
        
        cell.bookBackgroundView.backgroundColor =
        SettingColor.allCases[indexPath.item].bookBackgroundColor


        let url = URL(string: data.imageURL)
        cell.bookImageView.kf.setImage(with: url)
     
        
        return cell
    }
    
    
    
    // 셀이 선택되었을 때 - didSelectItemAt (Toast 라이브러리 사용)
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.view.makeToast("\(indexPath.item)번째 셀을 선택했습니다.", duration: 1, position: .center)
        // 1초동안, 스크린 가운데에 표시.
        
    }
    
    

}
