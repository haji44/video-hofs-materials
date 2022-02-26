/// Sample code from the video course, Higher-Order Functions in Swift,
/// published at raywenderlich.com, Copyright (c) 2021 Razeware LLC.
/// See LICENSE for details. Thank you for supporting our work!

import Foundation

extension Array {
    func forLoopify<Transformed>(_ transform: (Element) -> Transformed) -> [Transformed] {
        var transformedArray: [Transformed] = []
        for element in self {
            let transformed = transform(element)
            transformedArray.append(transformed)
        }
        return transformedArray
    }
}


struct User {
    let numberArray = [1, 2, 3, 4]
}



// MARK: - flatMap

let designersMap = gameLibrary.map(\.designers)
let designersFlat = gameLibrary.flatMap(\.designers)
