import UIKit

class ViewController2: UIViewController {
    
    var collectionVC:UICollectionView?
    
    let picsArray = Model.reversing()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Screen Two"
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.width, height: view.frame.height/4)

        collectionVC = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionVC = collectionVC else {
            return
        }
        collectionVC.delegate = self
        collectionVC.dataSource = self
        collectionVC.register(ImageCell.self,
                              forCellWithReuseIdentifier:ImageCell.cellIdentifier)
        
        collectionVC.frame = view.bounds
        collectionVC.backgroundColor = .white
        
        view.addSubview(collectionVC)
          
    }
    
}

extension ViewController2: UICollectionViewDelegate {
    
}

extension ViewController2: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let collectionVC = collectionVC else {return UICollectionViewCell()}
        let cell = collectionVC.dequeueReusableCell(withReuseIdentifier: ImageCell.cellIdentifier,
                                                    for: indexPath) as! ImageCell
        
        cell.imageView.image = UIImage(named:picsArray[indexPath.row])
        cell.imageView.contentMode = .center
        return cell
        
    }
    
    
}
