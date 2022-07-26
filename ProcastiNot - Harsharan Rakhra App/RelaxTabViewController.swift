//
//  PlanTabViewController.swift
//  ProcastiNot - Harsharan Rakhra App
//
//  Created by CoopStudent on 2022-07-26.
//

import UIKit
import FirebaseAuth

class RelaxTabViewController: UIViewController {

    @IBOutlet weak var greeting: UILabel!
    @IBOutlet weak var blueBackground: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueBackground.layer.cornerRadius = 49

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        greeting.text = "Hi \(Auth.auth().currentUser?.displayName ?? "No Username")"
        greeting.sizeToFit()
    }
    
    @IBAction func Logout(_ sender: Any) {
        do{
            
        try Auth.auth().signOut()
            
        }catch{
            print("Error")
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "login")
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}