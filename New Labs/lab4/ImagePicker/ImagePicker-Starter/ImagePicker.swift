//
//  ImagePicker.swift
//  ImagePicker-Starter
//
//  Created by Anokhi Kastia on 8/2/19.
//  Copyright © 2019 RJ Pimentel. All rights reserved.
//

import Foundation

class ImagePicker {
    func randomize() -> [String]{
        var images = ["image-1.jpg", "image-2.jpg", "image-3.jpg",              "image-4.jpg", "image-5.jpg", "image-6.jpg",
            "image-7.jpg", "image-8.jpg", "image-9.jpg",
            "image-10.jpg", "image-11.jpg", "image-12.jpg"]
        var shuffledImages = [String]()
        for _ in 0..<12 {
            let randomIndex = Int(arc4random_uniform(UInt32(images.count)))
            shuffledImages.append(images[randomIndex])
            images.remove(at: randomIndex)
        }
        return shuffledImages
    }
}
