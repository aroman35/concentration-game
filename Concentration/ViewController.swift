//
//  ViewController.swift
//  Concentration
//
//  Created by Alex Romanov on 05.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var touches = 0 {
        didSet{
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipButton(emoji: String, button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.3702127635, green: 0.3950533867, blue: 0.9029615521, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    let emojiCollection = ["🦊", "🐰", "🦊", "🐰"]
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender){
            flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }
    
    
}

