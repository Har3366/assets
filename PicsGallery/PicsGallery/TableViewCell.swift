import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier = "MyCell"
    let photoImage = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        photoImage.frame = CGRect(x: (contentView.frame.size.width - photoImage.frame.size.width)/2, y: 0,
                                  width: contentView.frame.size.width,
                                  height: contentView.frame.size.height-10)
        photoImage.contentMode = .scaleAspectFit
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(photoImage)
        
    }

     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    


}
