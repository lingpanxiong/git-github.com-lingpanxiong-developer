//
//  ViewController.swift
//  SearchMap
//
//  Created by iront on 16/5/16.
//  Copyright © 2016年 iront. All rights reserved.
//

import UIKit
import MapKit       //for map
class ViewController: UIViewController {

  //import map
    @IBOutlet weak var mapview: MKMapView!
    /***********************/
    @IBOutlet weak var btnhotel: UIButton!
    @IBOutlet weak var btnsm: UIButton!
    @IBOutlet weak var btnhospital: UIButton!
    @IBOutlet weak var btnMenu: UIButton!
    //reset icon
    
    @IBAction func btnsmclick(sender: AnyObject) {
        reset()
    }
    @IBAction func btnhospitalclick(sender: AnyObject) {
        reset()
    }
    @IBAction func btnhotelclick(sender: AnyObject) {
        reset()
    }
    //初始化位置
    let initiallocation=CLLocation(latitude:22.5395715320,longitude:113.9428095175)
    //设置搜索范围
    let searchradius:CLLocationDistance=2000
    
    
    //
    @IBAction func btnMenuclick(sender: AnyObject) {
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.btnMenu.transform=CGAffineTransformMakeRotation(0)
            //对三个按钮的设置
            self.btnsm.alpha=0.8
            self.btnsm.transform=CGAffineTransformConcat(CGAffineTransformMakeScale(1.5, 1.5),CGAffineTransformMakeTranslation(-80, -25))
            self.btnhotel.alpha=0.8
            self.btnhotel.transform=CGAffineTransformConcat(CGAffineTransformMakeScale(1.5, 1.5),CGAffineTransformMakeTranslation(80, -25))
            self.btnhospital.alpha=0.8
            self.btnhospital.transform=CGAffineTransformConcat(CGAffineTransformMakeScale(1.5, 1.5),CGAffineTransformMakeTranslation(0, -50))
            }, completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.btnMenu.alpha=0
        //对三个按钮的设置
        self.btnsm.alpha=0
        self.btnhotel.alpha=0
        self.btnhospital.alpha=0
        self.btnhospital.layer.cornerRadius=10
        self.btnhotel.layer.cornerRadius=10
        self.btnsm.layer.cornerRadius=10
        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.btnMenu.alpha=1
            self.btnMenu.transform=CGAffineTransformMakeRotation(0.25*3.1415927)
            }, completion:nil)
        
        //make a 区域
        let region=MKCoordinateRegionMakeWithDistance(initiallocation.coordinate,searchradius, searchradius)
        mapview.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reset(){
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.btnMenu.transform=CGAffineTransformMakeRotation(0.25*3.1415927)
            //对三个按钮的设置
            self.btnsm.alpha=0
            self.btnsm.transform=CGAffineTransformConcat(CGAffineTransformMakeScale(1, 1),CGAffineTransformMakeTranslation(0, 0))
            self.btnhotel.alpha=0
            self.btnhotel.transform=CGAffineTransformConcat(CGAffineTransformMakeScale(1, 1),CGAffineTransformMakeTranslation(0, 0))
            self.btnhospital.alpha=0
            self.btnhospital.transform=CGAffineTransformConcat(CGAffineTransformMakeScale(1, 1),CGAffineTransformMakeTranslation(0, 0))
            }, completion:nil)
    }


}

