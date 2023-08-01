//
//  ViewController.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 27/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    
  
    var newView : UIView?
    var newLabel : UILabel?
    var color = UIColor(red: 13, green: 30, blue: 133, alpha: 1)
    var signUpButton : UIButton?
    var signInButton : UIButton?
    var newImage: UIImageView?
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    
    
    override func  viewDidLoad() {
    super.viewDidLoad()
        view.backgroundColor = UIColor.backgroundColor
        intitElements()
    }
        
    func intitElements () {
        
        newView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.width, height: Constants.height))
        newView?.backgroundColor = .backgroundColor
        view.addSubview(newView!)
       
        
        //Paso 1: Inicializar variable
        
        //Paso 1 : Inicializar variable
        newLabel = UILabel(frame: CGRect(x:140 , y: 80, width: 190, height: 190))
        // Paso 2: Configuramos los atributos texto, imagen,orrillas etc
        newLabel?.textColor = UIColor.yellowLetter
        newLabel?.text = "SIX PACK"
        newLabel?.font = UIFont(name: "Arial Bold",  size: 25)
        
        // Paso 3: agregar a la vista
        view.addSubview(newLabel!)
        
        signUpButton = UIButton(frame: CGRect(x: 100, y: 320, width: 200, height: 50))
        signUpButton?.backgroundColor = .lightGray
        signUpButton?.layer.cornerRadius = 12
        signUpButton?.addTarget(self, action: #selector (goToSingUpScreean), for: .touchUpInside)
        signUpButton?.setTitle("Sing Up", for: .normal)
        view.addSubview(signUpButton!)
        
        signInButton = UIButton(frame: CGRect(x: 100, y: 420, width: 200, height: 50))
        signInButton?.backgroundColor = .lightGray
        signInButton?.layer.cornerRadius = 12
        signInButton?.setTitle("Log In", for: .normal)
        signInButton?.addTarget(self, action: #selector (goToSignInScreean), for: .touchUpInside)
        view.addSubview(signInButton!)
        
        newImage = UIImageView(frame: CGRect(x: 100, y: 220, width: 200, height: 50))
        newImage?.image = UIImage(named: "sixpack" )
        newImage?.layer.masksToBounds = true
        newImage?.contentMode = .scaleAspectFit
        view.addSubview(newImage!)
    }
    
    @objc func goToSignInScreean(){
        print ("signInButton Pressed")
        let signInVC = LogInViewController()
        present(signInVC, animated: true)
        
        
        
    }
    
    @objc func goToSingUpScreean(){
        print ("signUpButton Pressed")
        let signUpVC = SignInViewController()
        present(signUpVC, animated: true)
    }
    
}
