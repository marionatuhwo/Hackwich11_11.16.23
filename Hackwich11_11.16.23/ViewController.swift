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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        //Part 7
        let message = "The value is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle:.alert)
                       
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
                       
        alert.addAction(action)
                       
        present(alert, animated: true, completion: nil)

    }
    
    @IBAction func sliderHasMoved(_ sender: Any)
    {
    
        print("The Value of the slider is:\(slider.value)")
        //Part 6
        currentValue = Int((slider.value))
        
        
    
    
    }
    
}

