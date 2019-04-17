//
//  ViewController.swift
//  NewsMemo
//
//  Created by 優樹永井 on 2019/04/12.
//  Copyright © 2019 com.nagai. All rights reserved.
//

//import UIKit
import Foundation
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //setting()
        
//        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
//            guard changeCurrentIndex == true else { return }
//            oldCell?.label.textColor = UIColor(red: 138/255.0, green: 138/255.0, blue: 144/255.0, alpha: 1.0)
//            newCell?.label.textColor = .white
//        }
    }
    
    func setting() {
        let graySpotifyColor = UIColor(red: 21/255.0, green: 21/255.0, blue: 24/255.0, alpha: 1.0)
        let darkGraySpotifyColor = UIColor(red: 19/255.0, green: 20/255.0, blue: 20/255.0, alpha: 1.0)
        settings.style.buttonBarBackgroundColor = graySpotifyColor
        settings.style.buttonBarItemBackgroundColor = graySpotifyColor
        settings.style.selectedBarBackgroundColor = UIColor(red: 33/255.0, green: 174/255.0, blue: 67/255.0, alpha: 1.0)
        settings.style.buttonBarItemFont = UIFont(name: "HelveticaNeue-Light", size:14) ?? UIFont.systemFont(ofSize: 14)
        settings.style.selectedBarHeight = 3.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 20
        settings.style.buttonBarRightContentInset = 20
    }
    
    // MARK: - PagerTabStripDataSource
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = TechnologyTableViewController(style: .plain, itemInfo: IndicatorInfo(title: "TECHNOLOGY"))
        let child_2 = EntertainmentTableViewController(style: .plain, itemInfo: IndicatorInfo(title: "ENTERTAINMENT"))
        let child_3 = InovationTableViewController(style: .plain, itemInfo: IndicatorInfo(title: "INOVATION"))
        return [child_1, child_2, child_3]
    }



}

