import Foundation

class Model {
    static var picsArray = ["pic1", "pic2", "pic3", "pic4", "pic5",
                     "pic6", "pic7", "pic8", "pic9", "pic10",
                     "pic11", "pic12", "pic13", "pic14", "pic15"]

    static func reversing() -> [String]{
        var picsArrayReverse = [String]()
        for _ in Model.picsArray  { picsArrayReverse.append(Model.picsArray.removeLast()) }
        return picsArrayReverse
    }
    
    
}



