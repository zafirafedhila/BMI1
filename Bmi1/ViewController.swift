//
//  ViewController.swift
//  Bmi1
//
//  Created by Zafira Fedhila on 02/04/21.
//

import UIKit

class MyBMIViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightResultLabel: UILabel!
    // syntax custumise behivior
    //property apple
    // wear type reefrence
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightResultLabel: UILabel!
    @IBOutlet weak var bmivalueLabel: UILabel!
    @IBOutlet weak var bmiStatusLabel: UILabel!
    // buat tipe
    
    
    
    
    @IBAction func weightSliderValueChange(_ sender: UISlider) {
        
        weightResultLabel.text="\(String(format : "%.2f" , sender.value))kg"
        //print("slider value from sender\(sender.value)")
        //dapat akses slider value langsung dari functionnya parameter sender
        
        //print("slider value from outlet\(weightSlider.value)")
        // value nya sama dari parameter sender atau dari outlet, punya outles dr kelas sendiri
    }
    
    //parameter ui slider
    
    
    @IBAction func HeightSliderValueChange(_ sender: UISlider) {
        heightResultLabel.text="\(String(format : "%.2f" , sender.value))kg"
    }
    
    
    
    @IBAction func ButtonCalculate(_ sender: UIButton) {
        
        let height = heightSlider.value / 100 // m
        let weight = weightSlider.value //kg
        let bmiValue = weight/pow(2, height)
        
        bmivalueLabel.text="\(bmiValue)"
        bmiStatusLabel.text=getBMIStatus(from: bmiValue)
        
        
        
    }
    
    

    
  
    var bmiValue :Double = 0.0
    let bmiValue2 : Double = 0.0 //immutable
        //variabel tipe data dobel
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        // sebelum view dimunculin kita mau melakukan apa
        
       
    }
    
    func setupView() {
        weightLabel.text = "Weight"
        weightLabel.textColor = UIColor.red
        heightLabel.text = "Height"
        heightLabel.textColor=UIColor.red
        bmivalueLabel.text="\(bmiValue)Kg/m2"
        // string intercollection
        // type casting
    }
    
    func getBMIStatus(from bmiValue:Float) -> String {
        if bmiValue < 18.5 {
            return "underweight"
        }else
        
        if bmiValue >= 18.5 && bmiValue < 24.9{
            return "Normal"
        }else
        if bmiValue >= 25.0 && bmiValue < 24.9 {
            return "overweight"
        }else{
            return "Obese"
        }
        
    }
    
// func 2 parameter sekaligus
//    func calculateBMI(hegight:Double, weight: Double){
//
//        print(hegight)
//        print(weight)
//    }
    


}

