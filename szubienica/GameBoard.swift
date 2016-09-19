//
//  GameBoard.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 16.09.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit

class GameBoard: UIViewController {

    @IBOutlet weak var attemptsLabel: UILabel!
    let wordlist = ["agrest","bigos","czara","obuwie"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let target =
        "\(wordlist[Int(arc4random_uniform(UInt32(wordlist.count)))])"
    
        let lenght = target.characters.count
        var attemt = ""
        for _ in 0..<lenght{
            attemt += "-  "
        }
        attemptsLabel.text = attemt
        var badchars = ""
        
        
        
     
        

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
