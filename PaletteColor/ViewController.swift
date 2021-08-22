//
//  ViewController.swift
//  PaletteColor
//
//  Created by Руслан Штыбаев on 21.08.2021.
//

import UIKit

//enum RGBColor:  {
//    case red, green, blue
//}

class ViewController: UIViewController {

    @IBOutlet var tableView: UIView!
    
    @IBOutlet var redCountLabel: UILabel!
    @IBOutlet var greenCountLabel: UILabel!
    @IBOutlet var blueCountLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    var redValue: Double = 0.0
    var greenValue: Double = 0.0
    var blueValue: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCountLabel.text = String(redSlider.value)
        greenCountLabel.text = String(greenSlider.value)
        
    }

    @IBAction func redSlyderAction() {
        redCountLabel.text = String(redSlider.value)
        redValue = Double(redSlider.value)
        tableView.backgroundColor = UIColor.init(red: CGFloat(redValue), green: 0, blue: 0, alpha: 1.0)
    }
    
    @IBAction func GreenSlyderAction() {
        greenCountLabel.text = String(greenSlider.value)
        greenValue = Double(greenSlider.value)
        tableView.backgroundColor = UIColor.init(red: 0, green: CGFloat(greenValue), blue: 0, alpha: 1.0)
    }
    
    
    @IBAction func BlueSlyderAction() {
        blueCountLabel.text = String(blueSlider.value)
        blueValue = Double(blueSlider.value)
        tableView.backgroundColor = UIColor.init(red: 0, green: 0, blue: CGFloat(blueValue), alpha: 1.0)
    }
    
 
}



