//
//  GameBoard.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 16.09.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit

class GameBoard: UIViewController {
    @IBOutlet weak var badLettersLabel: UILabel!
    @IBOutlet weak var HangManOutlet: MainDeadMan!
    @IBOutlet weak var attemptsLabel: UILabel!
    @IBAction func addLetter(_ sender: UIButton) {
        addCurrentLetter(sender)
    }
    
    private var allWords = [String]()
    private var guesses: Int = 9
    private var target: String = ""
    private var badchars: String = ""
    private var attempt: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let filepath = Bundle.main.path(forResource: "words", ofType: "plist")
        let blocksData = NSArray(contentsOfFile: filepath!)!
        let randomPattern = blocksData[Int(arc4random_uniform(UInt32(blocksData.count)))]
        
        target = (randomPattern as AnyObject).uppercased
        
        let lenght = target.count
        for _ in 0..<lenght{
            attempt += "-"
        }
        attemptsLabel.text = attempt
        print(target)
    }
    
    private func addCurrentLetter(_ sender: UIButton) {
        let letter = sender.currentTitle!
        if((badchars.range(of: letter)) != nil||attempt.range(of: letter) != nil){
            print("Ta litera już była")
        }
        let loc = target.range(of: letter)
        if(loc != nil){
            let loc = Range(uncheckedBounds: (lower: target.startIndex, upper: target.endIndex))
            let lettersInCase = target.rangesOfString(searchString: letter, options: NSString.CompareOptions.caseInsensitive, searchRange:loc )
            
            for i in lettersInCase{
                
                attempt.replaceSubrange(i, with: "\(letter)")
            }
            attemptsLabel.text = attempt
        }
        else {
            if !badchars.contains(letter)
            {
                HangManOutlet?.cout += 1
                HangManOutlet?.setNeedsDisplay()
                print("Nie ma takiej litery")
                guesses -= 1
                badchars += letter
            }
        }
        if (attempt != target){
            if badchars.count > 0 {
                badLettersLabel.text = badchars
                print("Zle litery : \(badchars)")
            }
            print("Pozostalo szans \(guesses)")
        }
        if guesses == 0{
            print("Przegrałeś")
            showAlertView(for: .lose)
        }
        if attempt == target {
            print("Wygrałeś")
            showAlertView(for: .won)
        }
    }
    
    private func showAlertView(for result: Result) {
        var alertTitle: String?
        switch result {
        case .won:
            alertTitle = "Wygrałeś"
        case .lose:
            alertTitle = "Przegrałeś"
        }
        let alert = UIAlertController(title: nil, message: alertTitle, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak self] _ in
            self?.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: { [weak self] _ in
            self?.restart()
        }))
       
        self.present(alert, animated: true)
    }
    
    private func restart(){
        guesses = 9
        target = ""
        badchars = ""
        attempt = ""
        badLettersLabel.text = ""
        HangManOutlet?.cout = 0
        HangManOutlet.pathCase.removeAll()
        HangManOutlet.setNeedsDisplay()
        viewDidLoad()
    }
}
