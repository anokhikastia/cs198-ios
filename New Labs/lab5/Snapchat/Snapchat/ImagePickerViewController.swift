//
//  ImagePickerViewController.swift
//  Snapchat
//
//  Created by Anokhi Kastia on 8/8/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import Foundation
import UIKit

class ImagePickerViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data!.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pictureCell", for: indexPath) as! ImageCollectionViewCell
        let image = data?.images[indexPath.row]
        cell.imgPicked.image = UIImage(named: image!)
        
        cell.imgPicked.layer.cornerRadius = 5
        cell.imgPicked.layer.masksToBounds = true
        return cell
    }
    
    
    @IBOutlet weak var imgPickerCollectionView: UICollectionView!
    
    var data : Data?
    var chosenImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = Data()
        imgPickerCollectionView.dataSource = self
        imgPickerCollectionView.delegate = self
    }
    
    func selectImage(_ image: UIImage) {
        //The image being selected is passed in as "image".
        chosenImage = image
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let identifier = segue.identifier {
            if identifier == "imageSegue" {
                if segue.destination is FeedPickerViewController {
                    let destination = segue.destination as! FeedPickerViewController
                    destination.image = chosenImage
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
