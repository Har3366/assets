
import UIKit

class ViewController1: UIViewController {
    
    var tableVC:UITableView?
    let picsArray = Model.picsArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Screen One"
        view.backgroundColor = .white
        
        tableVC = UITableView(frame: .zero)
        guard let tableVC = tableVC else {
            return
        }
        tableVC.delegate = self
        tableVC.dataSource = self
        tableVC.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableVC.separatorStyle = .none
        view.addSubview(tableVC)
    }
    
  
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard let tableVC = tableVC else {return}
        tableVC.frame = view.bounds
    }
}

extension ViewController1 : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (UIImage(named: picsArray[indexPath.row])?.size.height)!
    }
    
}


extension ViewController1 : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picsArray.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let tableVC = tableVC else {return UITableViewCell()}
        let cell = tableVC.dequeueReusableCell(withIdentifier:TableViewCell.identifier,for: indexPath) as! TableViewCell
       
        cell.photoImage.image = UIImage(named: picsArray[indexPath.row])
        
        return cell
    }
    
    
}
