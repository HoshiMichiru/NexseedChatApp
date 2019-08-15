//
//  LoginViewController.swift
//  NexseedChat
//
//  Created by 星みちる on 2019/08/15.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
       
    }
    

   

}
//1.extension
extension LoginViewController:GIDSignInDelegate,GIDSignInUIDelegate{
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
      
        //2.エラーがないかの確認
        if let error = error {
            print("エラーです")
            print(error.localizedDescription)
            
            return
        }
        
        //3.ユーザーの認証情報取得
        let authentiation = user.authentication
        
        //グーグルのトークンを取得
        let credential = GoogleAuthProvider.credential(withIDToken: authentiation!.idToken, accessToken: authentiation!.accessToken)
        
        //4.googleアカウントを使ってfirebaseにログイン情報をち登録する
        Auth.auth().signIn(with: credential)
        { (authDataResult,error) in
            
            if let error = error {
                print(error.localizedDescription)
            }else{
                print("ログイン成功")
                //ログインしたら画面遷移
                self.performSegue(withIdentifier: "toChat", sender: nil)
            }
            }
        
     
    
    
    
}
}
