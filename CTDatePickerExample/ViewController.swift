//
//  ViewController.swift
//  CTDatePicker
//
//  Created by Mario Kovacevic on 20/09/2018.
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
    func textFieldDidBeginEditing(_ textField: UITextField) {
        var picker: CTDatePicker!
        switch textField {
        case self.dateAndTimeTextField:
            picker = CTDatePicker(datePickerMode: .dateAndTime, onSet: { date in
                textField.text = "\(date)"
            }, onCancel: {
                
            })
            break
        case self.dateTextField:
            picker = CTDatePicker(datePickerMode: .date, onSet: { date in
                textField.text = "\(date)"
            }, onCancel: {
                
            })
            break
        case self.timeTextField:
            picker = CTDatePicker(datePickerMode: .time, onSet: { date in
                textField.text = "\(date)"
            }, onCancel: {
                
            })
            break
        default:
            picker = CTDatePicker(datePickerMode: .dateAndTime, onSet: { date in
                textField.text = "\(date)"
            }, onCancel: {
                
            })
        }
        
        self.present(picker, animated: true)
    }
}

