
import Foundation
import UIKit

class Animal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var scientificName: String
    var className: String
    var size: String
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, scientificName: String, className: String, size: String){
        
        
        self.name = name
        self.photo = photo
        self.scientificName = scientificName
        self.className = className
        self.size = size
        
    }
}
