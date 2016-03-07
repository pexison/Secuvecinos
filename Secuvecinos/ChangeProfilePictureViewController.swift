//
//  ChangeProfilePictureViewController.swift
//  Secuvecinos
//
//  Created by John on 13/2/16.
//  Copyright © 2016 John. All rights reserved.
//


import UIKit

class ChangeProfilePictureViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var imagePicker: UIImagePickerController!
    
    let image : UIImage = UIImage(named:"profilePicture.jpg")!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var takePictureBtn: UIButton!
    
    @IBOutlet weak var chosePhotoBtn: UIButton!
    
    @IBOutlet weak var deletePhoto: UIButton!
    
    @IBAction func deleteActualPhoto(sender: AnyObject) {
        imageView.image = image
    }
    
    @IBAction func chosePhoto(sender: AnyObject) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .PhotoLibrary
        imagePicker.allowsEditing = true
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func takePhoto(sender: AnyObject) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .Camera
        imagePicker.allowsEditing = true
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        imageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        imageView.image = image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}