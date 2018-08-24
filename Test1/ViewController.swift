//
//  ViewController.swift
//  Test1
//
//  Created by 小林 悠希 on 2018/08/01.
//  Copyright © 2018年 小林 悠希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lvf: UITextField!
    @IBOutlet weak var cmdf: UITextField!
    @IBOutlet weak var atkf: UITextField!
    @IBOutlet weak var deff: UITextField!
    var tmp: [Int]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calc(_ sender: UIButton) {
        tmp = dmgCalc(Int(lvf.text!)!, Int(cmdf.text!)!, Int(atkf.text!)!, Int(deff.text!)!)
        //ans.text = String(tmp[0]) + "~" + String(tmp[15])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc2 = segue.destination as! ViewController2
        vc2.answer = String(tmp[0]) + "~" + String(tmp[15])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

func dmgCalc(_ lv: Int, _ cmd: Int, _ atk: Int, _ def: Int) -> [Int] {
    var tmp :Int = lv * 2 / 5 + 2
    tmp = tmp * cmd * atk / def
    tmp = tmp / 50 + 2
    var ret = [Int](repeating: 0, count: 16)
    for i in 0...15 {
        ret[i] = Int(floor(Double(tmp) * (0.85 + Double(i) / 100.0)))
    }
    return ret
}
/*
 攻撃側のレベル × 2 ÷ 5 ＋ 2 → 切り捨て
 　　× 物理技(特殊技)の威力 × 攻撃側のこうげき(とくこう) ÷ 防御側のぼうぎょ(とくぼう) → 切り捨て
 　　÷ 50 ＋ 2 → 切り捨て
 　　× 乱数(0.85, 0.86, …… ,0.99, 1.00 の何れか) → 切り捨て
 */
