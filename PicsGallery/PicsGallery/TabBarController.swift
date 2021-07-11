import UIKit

class TabBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc1 = UINavigationController(rootViewController: ViewController1())
        let vc2 = UINavigationController(rootViewController: ViewController2())

        vc1.title = "Screen One"
        vc2.title = "Screen Two"
        
        self.setViewControllers([vc1,vc2], animated: false)
        self.modalPresentationStyle = .fullScreen
        
    }
}

