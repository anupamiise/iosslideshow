//
//  ViewController.swift
//  SlideShowP
//
//  Created by Anupam Mishra on 21/10/16.
//  Copyright © 2016 wcities. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SBSliderDelegate {
    var imagesArray:[String]?  ;
    var slider:SBSliderView? ;
    
    var imagesArrayRemote:[String]?  ;
    var sliderRemote:SBSliderView? ;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //local
        //        imagesArray = ["Black-Car-HD-Wallpaper.jpg", "lamborghini_murcielago_superveloce_2-2880x1800.jpg", "nature-landscape-photography-lanscape-cool-hd-wallpapers-fullscreen-high-resolution.jpg", "wallpaper-hd-3151.jpg"];
        //        slider =  Bundle.main.loadNibNamed("SBSliderView", owner: nil, options: nil)?[0] as? SBSliderView
        //        slider?.delegate = self;
        //        if slider != nil {
        //            self.view.addSubview(slider!);
        //            slider?.createSlider(withImages:imagesArray , withAutoScroll: true, in: self.view)
        //            slider?.frame = CGRect(x: 0, y: 10, width: UIScreen.main.bounds.size.width, height: 200)
        //        }
        
        //remote
        imagesArrayRemote = ["http://cdn.wonderfulengineering.com/wp-content/uploads/2016/01/nature-wallpapers-38-798x350.jpg", "http://cdn.wonderfulengineering.com/wp-content/uploads/2016/01/nature-wallpapers-1-610x381.jpg", "http://cdn.wonderfulengineering.com/wp-content/uploads/2016/01/nature-wallpapers-2-610x381.jpeg", "http://cdn.wonderfulengineering.com/wp-content/uploads/2016/01/nature-wallpapers-4-610x343.jpg"];
        sliderRemote =  Bundle.main.loadNibNamed("SBSliderView", owner: nil, options: nil)?[0] as? SBSliderView
        sliderRemote?.delegate = self;
        if sliderRemote != nil {
            self.view.addSubview(sliderRemote!);
            sliderRemote?.createSlider(withImagesRemote:imagesArrayRemote , withAutoScroll: true, in: self.view)
            sliderRemote?.frame = CGRect(x: 0, y: 220, width: UIScreen.main.bounds.size.width, height: 200)
        }
        
        
    }
    
    func sbslider(_ sbslider:SBSliderView, didTapOnImage targetImage:UIImage, andParentView targetView:UIImageView) -> Void
    {
        let photoViewerManager:SBPhotoManager  = SBPhotoManager()
        photoViewerManager.initializePhotoViewer(fromViewControlller: self, forTargetImageView: targetView, withPosition: sbslider.frame)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

