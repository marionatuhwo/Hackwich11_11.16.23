//
//  ViewController.swift
//  Hackwich11_11.16.23
//
//  Created by Marion Ano on 11/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Part 1 #1
        currentValue = Int(slider.value)
        //targetValue = Int.random(in: 0...100)
        startNewRound()
        
    }


    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        //Part 7
       
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle:.alert)
                       
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
                       
        alert.addAction(action)
                       
        present(alert, animated: true, completion: nil)
        
        startNewRound()

    }
    
    @IBAction func sliderHasMoved(_ sender: Any)
    {
    
        print("The Value of the slider is:\(slider.value)")
        //Part 6
        currentValue = Int(slider.value)
        
    
    
    }
    
    func startNewRound()
    {
        targetValue = Int.random(in: 0...100)
        currentValue = Int((slider.value))
    }

   
    
}

