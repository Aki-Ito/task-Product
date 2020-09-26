//
//  ViewController.swift
//  task Product
//
//  Created by 伊藤明孝 on 2020/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerLabel :UILabel!
    @IBOutlet var scoreLabel :UILabel!
    
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
  
    //タイマーの秒数
    var count: Float = 14.00
    //タイマーを宣言する
    var timer: Timer = Timer()
    //スコアのカウントを行う
    var score: Int = 0
    //この変数で何番まで押されているのかを管理する
    var currentNumber: Int = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ゲームプレイ画面になった瞬間タイマーが開始する
        
        timer = Timer.scheduledTimer(timeInterval: 0.01,
                                     target: self,
                                     selector: #selector(self.down),
                                     userInfo: nil,
                                     repeats: true)
        
        
        self.reset()
        // Do any additional setup after loading the view.
    }
    //画面が戻った際にタイマー等の機能がリセットされるようにする
    override func viewWillAppear(_ animated: Bool) {
        count = 14.00
        timerLabel.text = String(format: "%.2f", count)
        self.reset()
    }
    
    
    //画面遷移の際にscoreの数値を受け渡すようにする。
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController
            = segue.destination as! ResultViewController
        resultViewController.receiveValue = self.score
    }
    
    //タイマーが起動している時に行われる処理
    @objc func down(){
        if count > 0.00 {count = count-0.01
            timerLabel.text = String(format: "%.2f", count)
        }else{
            count = 0.00
            timerLabel.text = String(format: "%.2f", count)
            self.performSegue(withIdentifier: "toResult", sender: nil)
        }
    }
    
    //各ボタンでできることをメソッドとしてまとめる
    func order(number: Int){
        
        if numberArray[number] == currentNumber+1{
            currentNumber = currentNumber + 1
            score = score + 10
            scoreLabel.text = String(score)
        }
        //一通り押し終わった後の処理
        if numberArray[number] == 8{
            currentNumber = -1
            count = count + 2.00
            self.reset()
        }
    }
    
    //配列をシャッフルし配置するメソッド
    func reset(){
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
    }
    
    //各ボタンの操作
    @IBAction func button1(){
        self.order(number: 0)
    }
    
    @IBAction func button2(){
        self.order(number: 1)
    }
    
    @IBAction func button3(){
        self.order(number: 2)
    }
    
    @IBAction func button4(){
        self.order(number: 3)
    }
    
    @IBAction func button5(){
        self.order(number: 4)
    }
    
    @IBAction func button6(){
        self.order(number: 5)
    }
    
    @IBAction func button7(){
        self.order(number: 6)
    }
    
    @IBAction func button8(){
        self.order(number: 7)
    }
    
    @IBAction func button9(){
        self.order(number: 8)
    }
}

