//
//  TabBarController.swift
//  RUHungry
//
//  Created by shoule on 15/9/7.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        let titleArr:[String]       = ["发现","购票","活动","电影圈","我的"]
        let imgNameArr:[String] = ["discover","buyTicket","activity","flimCircle","profile"]
        var index = 0
        for title in titleArr {
            var controller:UIViewController;
            let itemImgName = imgNameArr[index]
            let selectedImgName = itemImgName + "_sel"
            let bgImgName = itemImgName + "_bg"
            switch index {
                case 0: //发现
                    controller = DiscoverController()
                    controller.view.backgroundColor = UIColor(patternImage: UIImage(named: bgImgName)!)
                    addOneChildVC(controller, Title:title, ImgName:itemImgName, selectedImgName: selectedImgName)
                case 1: //购票
                    controller = BuyTicketController()
                    controller.view.backgroundColor = UIColor(patternImage: UIImage(named: bgImgName)!)
                    addOneChildVC(controller, Title:title, ImgName:itemImgName, selectedImgName: selectedImgName)
                case 2: //活动
                    controller = ActivityController()
                    controller.view.backgroundColor = UIColor(patternImage: UIImage(named: bgImgName)!)
                    addOneChildVC(controller, Title:title, ImgName:itemImgName, selectedImgName: selectedImgName)
                case 3: //电影圈
                    controller = FlimCircleController()
                    controller.view.backgroundColor = UIColor(patternImage: UIImage(named: bgImgName)!)
                    addOneChildVC(controller, Title:title, ImgName:itemImgName, selectedImgName: selectedImgName)
                case 4: //我的
                    controller = ProfileController()
                    controller.view.backgroundColor = UIColor(patternImage: UIImage(named: bgImgName)!)
                    addOneChildVC(controller, Title:title, ImgName:itemImgName, selectedImgName: selectedImgName)
                default: break
            }
            index++;
        }
        self.tabBar.tintColor = HJW_GLOBLE_R;
    }
    
    /**
     *  添加一个子控制器
     *
     *  @param ViewController   子控制器对象
     *  @param Title            标题
     *  @param ImgName          图标
     *  @param selectedImgName  选中的图标
     */
    func addOneChildVC(ViewController:UIViewController, Title:String, ImgName:String, selectedImgName:String){
        let Navi = UINavigationController(rootViewController:ViewController)
        Navi.title = Title;
        Navi.tabBarItem.image = UIImage(named: ImgName)
        let selectedImage = UIImage(named: selectedImgName)
        Navi.tabBarItem.selectedImage = selectedImage
        addChildViewController(Navi)
        ViewController
    }
    
/*
    //[UIView beginAnimations:nil context:nil];
    //[UIView setAnimationDuration:1];
    //[UIView setAnimationBeginsFromCurrentState:NO];
    //[UIView setAnimationCurve:UIViewAnimationTransitionFlipFromLeft];
    //[UIView setAnimationTransition:kCATransitionMoveIn forView:tabBarController.view cache:YES];
    //[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:viewController.view cache:NO];
    //[viewController.view removeFromSuperview];
    //[UIView commitAnimations];
    CATransition *animation =[CATransition animation];
    [animation setDuration:0.75f];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault]];
    [animation setType:kCATransitionMoveIn];
    [animation setSubtype:kCATransitionFromRight];
    [tabBarController.view.layer addAnimation:animation forKey:@"reveal"];*/
}
