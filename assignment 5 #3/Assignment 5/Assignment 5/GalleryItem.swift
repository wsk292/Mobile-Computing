//
//  GalleryItem.swift
//  Assignment 5
//
//  Created by Butler Bourgeois on 10/11/19.
//  Copyright © 2019 cs329e. All rights reserved.
//

import Foundation
import UIKit

class GalleryItem {
    //MARK: Properties
    
    var image: UIImage?
    var caption: String

    
    //MARK: Initialization
    
    init?(image: UIImage?, caption: String){
        
        
        self.image = image
        self.caption = caption
        
    }
}
