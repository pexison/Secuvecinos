//
//  ConfigViewController.swift
//  Secuvecinos
//
//  Created by John on 13/2/16.
//  Copyright © 2016 John. All rights reserved.
//

class ConfigViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var themePicker: UIPickerView!
    
    @IBOutlet weak var videoQualityPicker: UIPickerView!
    
    let themePickerOptions = ["dark","light","nature"]
    
    let videoQualityOptions = ["Alta","Media","Baja"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        // Column count: use one column.
        return 1
    }
    
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
            print(pickerView.tag)
            if pickerView.tag == 1 {
                return themePickerOptions.count
            } else if pickerView == videoQualityPicker {
                return videoQualityOptions.count
            }
            return 1
    }
    
    func pickerView(pickerView: UIPickerView,
        titleForRow row: Int,
        forComponent component: Int) -> String? {
            if pickerView.tag == 1 {
                return themePickerOptions[component]
            } else if pickerView == videoQualityPicker{
                return videoQualityOptions[component]
            }
            return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        themePicker.tag = 1
        themePicker.dataSource = self
        themePicker.delegate = self
        
        //videoQuality.dataSource = self
        //videoQuality.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}