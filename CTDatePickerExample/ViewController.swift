//
//  ViewController.swift
//  CTDatePickerExample
//
//  Created by Mario Kovacevic on 08/10/2018.
//  Copyright © 2018 Mario Kovacevic. All rights reserved.
//

import UIKit
import CTDatePicker

class ViewController: UIViewController {
    
    @IBOutlet weak var dateAndTimeTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        var picker: DatePicker!
        switch textField {
        case self.dateAndTimeTextField:
            picker = DatePicker(datePickerMode: .dateAndTime)
            break
        case self.dateTextField:
            picker = DatePicker(datePickerMode: .date)
            break
        case self.timeTextField:
            picker = DatePicker(datePickerMode: .time)
            break
        default:
            picker = DatePicker(datePickerMode: .dateAndTime)
        }
        picker.didSet = { date in
            print(date)
            textField.text = "\(date)"
        }
        picker.didCancel = {
            
        }
        self.present(picker, animated: true)
        return false
    }
}

