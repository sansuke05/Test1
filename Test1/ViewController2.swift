//
//  ViewController2.swift
//  Test1
//
//  Created by xatu on 2018/08/24.
//  Copyright © 2018年 小林 悠希. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var answer: String!
    @IBOutlet weak var ans: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ans.text = answer
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
