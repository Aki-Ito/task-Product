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

    @IBOutlet var finalScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        finalScore.text = String(receiveValue)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gameViewController: ViewController
            = segue.destination as! ViewController
        gameViewController.count = self.countReset
    }
    
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
