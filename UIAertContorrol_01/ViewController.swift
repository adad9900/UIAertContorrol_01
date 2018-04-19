//
//  ViewController.swift
//  UIAertContorrol_01
//
//  Created by D7703_16 on 2018. 4. 19..
//  Copyright © 2018년 201412402. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btP(_ sender: Any) {
       let myAlertController = UIAlertController(title: "알람", message: "설정된 시간이 되었습니다", preferredStyle: UIAlertControllerStyle.alert)
        // overloding 중복정의, overrinding 재정의
        
        //확인 AlertAction 만들기
        let okAction = UIAlertAction(title: "확인", style: .default, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.purple
    })
        //취소 AlertAction 만들기
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
    })
        //테스트 AlertAction 만들기
        let testAction = UIAlertAction(title: "테스트", style: .destructive, handler: nil)
        
        //AlertAction를 AlertController에 넣기
        myAlertController.addAction(okAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(testAction)

        
        //화면에 출력
        present(myAlertController, animated: true, completion: nil)
        
}
}
