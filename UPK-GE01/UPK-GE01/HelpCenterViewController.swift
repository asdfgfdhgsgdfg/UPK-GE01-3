//
//  HelpCenterViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/16.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class HelpCenterViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var index_selectd = 0
    var menu = [["Quick Start"], ["E-manual"], ["FAQ"]]
    var menu_image = ["icon_more_about", "icon_help_emanual", "icon_more_help"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Help Center"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        // title = "My programs"
        // self.navigationItem.title = "RelieforMe"
        //  self.tabBarItem.selectedImage = UIImage(named: "pic")
        //controller.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        // controller.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 80*HeighPercent
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return  0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100*HeighPercent
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_helpcenter", for: indexPath)as! HelpCenterTableViewCell
     
        // print(indexPath.section)
        
        cell.HelpImage.image = UIImage(named:menu_image[indexPath.section])
        cell.HelpLabel.text = menu[indexPath.section][indexPath.row]
        cell.RightImage.image = UIImage(named:"lin_right")
        //cell.imageView?.image = UIImage(named:menu_image[indexPath.section])
        //cell.textLabel?.text = menu[indexPath.section][indexPath.row]
        //cell.textLabel?.textColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}


