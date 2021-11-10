//
//  Image+Extensions.swift
//  SpaceX
//
//  Created by Kristhian De Oliveira on 11/9/21.
//

import SwiftUI
import UIKit

extension Image {

func data(url:URL) -> Self {

if let data = try? Data(contentsOf: url) {

return Image(uiImage: UIImage(data: data)!)

.resizable()

}

return self

.resizable()

}

}
