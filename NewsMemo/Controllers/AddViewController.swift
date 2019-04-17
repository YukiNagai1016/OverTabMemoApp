//
//  AddViewController.swift
//  NewsMemo
//
//  Created by 優樹永井 on 2019/04/14.
//  Copyright © 2019 com.nagai. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var dayTextField: UITextField!
    @IBOutlet var evaluationTextField: UITextField!
    @IBOutlet var memoTextField: UITextField!
    @IBOutlet var categoryPickerView: UIPickerView!
    
    var inputText = ""
    
    var categoryArray = ["Technology", "Entertainment", "Inovation"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        categoryPickerView.delegate = self
        categoryPickerView.dataSource = self
        
        titleTextField.delegate = self
        urlTextField.delegate = self
        dayTextField.delegate = self
        evaluationTextField.delegate = self
        memoTextField.delegate = self
    }
    
    // MARK: - TextField delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // TextView以外のところをタップするとキーボードを閉じるコード
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    // MARK: - PickerView data source
    
    // UIPickerViewの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewの行数、要素の全数
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return categoryArray.count
    }
    
    // UIPickerViewに表示する配列
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return categoryArray[row]
    }
    
    // UIPickerViewのRowが選択された時の挙動
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        // 処理
    }

    @IBAction func addButton() {
        
    }
    
    func udSave() {
        
        let ud = UserDefaults.standard
        if ud.array(forKey: "memoArray") != nil {
            var saveMemoArray = ud.array(forKey: "memoArray") as! [String]
            
            if inputText != nil {
                saveMemoArray.append(inputText)
            } else {
                print("何も入力されていません")
            }
            
            ud.set(saveMemoArray, forKey: "memoArray")
            
        } else {
            var newMemoArray = [String]()
            
            if inputText != nil {
                newMemoArray.append(inputText)
            } else {
                print("何も入力されていません")
            }
            
            ud.set(newMemoArray, forKey: "memoArray")
        }
        
        // 自動保存
        ud.synchronize()
    }

}
