//
//  ResultViewController.swift
//  task Product
//
//  Created by 伊藤明孝 on 2020/09/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    var receiveValue: Int!
    var countReset: Float = 14.00
    //この変数に今までのスコアを保存する
    var record: Int!
    //スコアを保存するための変数
    let defaults: UserDefaults = UserDefaults.standard

    @IBOutlet var finalScore: UILabel!
    

  
    
    
    //画面遷移してからすぐにスコアを取得して表示
    override func viewDidLoad() {
        super.viewDidLoad()

        
        finalScore.text = String(receiveValue)
        
       
        // Do any additional setup after loading the view.
    }
    
    //ランキングを表示する画面
    @IBAction func ranking(){
        let alert: UIAlertController = UIAlertController(
            title: "ランキング", message: "一位"+String(defaults.integer(forKey: "score1")) +
                "\n" + "二位"+String(defaults.integer(forKey: "score2")) + "\n"+"三位"+String(defaults.integer(forKey: "score3")), preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(
            title: "OK", style: .cancel, handler: { action in
                print("ボタンが押されました")
            }
        )
        )
        
        present(alert, animated: true, completion: nil)
    }
    //ゲームプレイ画面に戻るようにする
    @IBAction func goBackToGame(){
        self.dismiss(animated: true, completion: nil)
        
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
