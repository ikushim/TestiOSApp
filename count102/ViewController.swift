//
//  ViewController.swift
//  count102
//
//  Created by nttr on 2017/08/02.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    var number : Int = 0
    @IBOutlet var label : UILabel!
    @IBOutlet var titleTable : UITableView!
//    var titleArray = {"りんご";"みかん";"スイカ"}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*
        titleTable.dataSource = self
        titleTable.delegate = self
        let nib = UINib(nibName: nib, bundle: Bundle.main)
        */

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
    }

    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
    }
    
    @IBAction func showHUD(){
        SVProgressHUD.showProgress(0.2,status: "ロード中")
    }
    
    @IBAction func dismissHUD(){
        SVProgressHUD.dismiss()
    }

    /*
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
 */
}

