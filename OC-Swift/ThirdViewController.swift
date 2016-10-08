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
        
        self.view.backgroundColor = UIColor.white
        
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: #selector(ThirdViewController.fisrtItem(_:)))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.fisrtItem(right:)))
        
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
        
        let tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.grouped)
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
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let initIdentifier = "Cell"
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: initIdentifier)
        
        //下面两个属性对应subtitle
        cell.textLabel?.text = baby[indexPath.row]
        cell.detailTextLabel?.text = "baby\(indexPath.row)"
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
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
