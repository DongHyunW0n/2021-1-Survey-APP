//
//  main_menu_controller.swift
//  Survey_Std
//
//  Created by WonDongHyun on 2021/06/06.
//

import UIKit

class main_menu_controller: UIViewController {

    @IBOutlet weak var logout_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Output_Alert(title: "로그인 성공!", message: "로그인 하였습니다", text: "확인")

        // Do any additional setup after loading the view.
    }
    

    
        
    @IBAction func logout(_ sender: Any) { //다시 로그인창으로 돌아가기
        
        let vcName = self.storyboard?.instantiateViewController(identifier: "login_UI")
        vcName?.modalPresentationStyle = .fullScreen//전체화면으로 보이게
        
        vcName?.modalTransitionStyle = .crossDissolve//애니메이션 삽입
        self.present(vcName!, animated: true, completion: nil)
    }
   
        
        
    
    func Output_Alert(title : String, message : String, text : String) {

            let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)

            let okButton = UIAlertAction(title: text, style: UIAlertAction.Style.cancel, handler: nil)

            alertController.addAction(okButton)

            return self.present(alertController, animated: true, completion: nil)

        }
    
}
