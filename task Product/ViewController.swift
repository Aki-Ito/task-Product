//
//  ViewController.swift
//  task Product
//
//  Created by 伊藤明孝 on 2020/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerLabel :UILabel!
    
    @IBOutlet var tapbutton1: UIButton!
    @IBOutlet var tapbutton2: UIButton!
    @IBOutlet var tapbutton3: UIButton!
    @IBOutlet var tapbutton4: UIButton!
    @IBOutlet var tapbutton5: UIButton!
    @IBOutlet var tapbutton6: UIButton!
    @IBOutlet var tapbutton7: UIButton!
    @IBOutlet var tapbutton8: UIButton!
    @IBOutlet var tapbutton9: UIButton!
    
    var numberArray:[Int] = [0,1,2,3,4,5,6,7,8]
    var index: Int = 0
    
    var count: Float = 14.00
    //タイマーを宣言する
    var timer: Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ゲームプレイ画面になった瞬間タイマーが開始する
        
        timer = Timer.scheduledTimer(timeInterval: 0.01,
                                     target: self,
                                     selector: #selector(self.down),
                                     userInfo: nil,
                                     repeats: true)
        //配列の中身をシャッフルする
        numberArray.shuffle()
        tapbutton1.setTitle("\(numberArray[0])", for: .normal)
        tapbutton2.setTitle("\(numberArray[1])", for: .normal)
        tapbutton3.setTitle("\(numberArray[2])", for: .normal)
        tapbutton4.setTitle("\(numberArray[3])", for: .normal)
        tapbutton5.setTitle("\(numberArray[4])", for: .normal)
        tapbutton6.setTitle("\(numberArray[5])", for: .normal)
        tapbutton7.setTitle("\(numberArray[6])", for: .normal)
        tapbutton8.setTitle("\(numberArray[7])", for: .normal)
        tapbutton9.setTitle("\(numberArray[8])", for: .normal)
        
        
       
        
        
        // Do any additional setup after loading the view.
    }

    @objc func down(){
        if count > 0.00 {count = count-0.01
            timerLabel.text = String(format: "%.2f", count)
        }else{
            count = 0.00
            timerLabel.text = String(format: "%.2f", count)
            self.performSegue(withIdentifier: "toResult", sender: nil)
        }
    }
    
    @IBAction func button1(){
        
    }
    
    @IBAction func button2(){
    
    }
    
    @IBAction func button3(){
    
    }
    
    @IBAction func button4(){
    
    }
    
    @IBAction func button5(){
    
    }
    
    @IBAction func button6(){
    
    }
    
    @IBAction func button7(){
    
    }
    
    @IBAction func button8(){
    
    }
    
    @IBAction func button9(){
    
    }
}

