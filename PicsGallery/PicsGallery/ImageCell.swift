import UIKit

class ImageCell: UICollectionViewCell {
    
    static let cellIdentifier = "ImageCell"
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.frame = CGRect(x: 0, y: 0,
                                width: contentView.frame.size.width,
                                height: contentView.frame.size.height)
        
    }
}
