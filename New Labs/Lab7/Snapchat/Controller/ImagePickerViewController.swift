//
//  ImagePickerViewController.swift
//  SnapchatLab
//
//  Created by Entei on 2/27/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class ImagePickerViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    let data = Data()
    var selectedImage:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as? ImageCollectionViewCell {
            cell.imageView.image = UIImage(named: data.images[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedImage = data.images[indexPath.row]
        performSegue(withIdentifier: "showFeedPickerSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! FeedPickerViewController
        dest.imageToPost = selectedImage
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let dimension = self.imageCollectionView.frame.size.width / 2 - 10;
        return CGSize(width: dimension, height: dimension)
    }
    
    @IBAction func unwindToImagePicker(segue:UIStoryboardSegue) {}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
