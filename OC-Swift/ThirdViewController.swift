//
//  ThirdViewController.swift
//  OC-Swift
//
//  Created by Liu Zhao on 16/8/12.
//  Copyright © 2016年 Liu Zhao. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var baby = ["宝宝0","宝宝1","宝宝2","宝宝3","宝宝4","宝宝5","宝宝6","宝宝7","宝宝8","宝宝9","宝宝10","宝宝11"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Third"
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: #selector(ThirdViewController.fisrtItem(_:)))
        
//        let btn = UIButton(frame: CGRectMake(100, 100, 100, 30))
//        btn.setTitle("Button", forState: UIControlState.Normal)
//        btn.tag = 100
//        btn.backgroundColor = UIColor.orangeColor()
////        btn.addTarget(self, action: #selector(ThirdViewController.btnTap(_:)), forControlEvents: UIControlEvents.TouchUpInside)
//        btn.handlerClickedButton { (sender) in
//            NSLog("Hi:%d", sender.tag)
//        }
//        self.view.addSubview(btn)
//        
//        let label = UILabel(frame: CGRectMake(100, 200, 100, 30))
//        label.text = "Label"
//        self.view.addSubview(label)
        
        let tableView = UITableView(frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height), style: UITableViewStyle.Grouped)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fisrtItem(right:UIBarButtonItem)
    {
        let vc = SecondViewController()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func btnTap(sender: UIButton) -> Void {
        NSLog("%d", sender.tag)
    }
    
    // MARK: - TableViewDelegate
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let initIdentifier = "Cell"
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: initIdentifier)
        
        //下面两个属性对应subtitle
        cell.textLabel?.text = baby[indexPath.row]
        cell.detailTextLabel?.text = "baby\(indexPath.row)"
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        if indexPath.row == 1 {
            let vc = SecondViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
