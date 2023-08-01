//
//  LogiInViewController.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 28/06/23.
//

import UIKit

class LogInViewController: UIViewController {
    
    var titleLabel: UILabel?
    var emailTextField: UITextField?
    var logInContainer: UIView?
    var passwordTextField1: UITextField?
    //var width : UIScreen.main.bounds.width
    //var height : UIScreen.main.bounds.height
    var arroba : UIImageView?
    var eye : UIImageView?
    var signInButton : UIButton?
    
    let paddingLeft : CGFloat = 70
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        intitElements()
        
    }
    
    func intitElements (){
        
        titleLabel = UILabel(frame: CGRect(x: 160, y: -10, width: 600, height: 190))
        titleLabel?.text = "LOG IN"
        titleLabel?.font = UIFont(name: "Arial Bold", size: 20)
        titleLabel?.textColor = UIColor .bluebackgroundColor
        view.addSubview(titleLabel!)
        
        logInContainer = UIView()
        logInContainer?.backgroundColor = .white
        logInContainer?.layer.cornerRadius = 10
        view.addSubview(logInContainer!)
        
        logInContainer?.translatesAutoresizingMaskIntoConstraints = false
        
        logInContainer?.topAnchor.constraint(equalTo: view.topAnchor, constant: 150) .isActive = true
        logInContainer?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeft).isActive = true
        logInContainer?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70) .isActive = true
        logInContainer?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -480) .isActive = true
        
        
        
        emailTextField = UITextField(frame: CGRect(x: 500, y: 500, width: 500, height: 100))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "Add your e.mail"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        emailTextField?.borderStyle = .roundedRect
        view.addSubview(emailTextField!)
        
        emailTextField?.translatesAutoresizingMaskIntoConstraints = false
        
        emailTextField?.topAnchor.constraint(equalTo: logInContainer!.topAnchor, constant: 20) .isActive = true
        emailTextField?.leadingAnchor.constraint(equalTo: logInContainer!.leadingAnchor, constant: 45) .isActive = true
        //emailTextField?.trailingAnchor.constraint(equalTo: logInContainer!.trailingAnchor, constant: 90) .isActive = true
        
        
        passwordTextField1 = UITextField(frame: CGRect(x: 70, y: 190, width: 200, height: 35))
        passwordTextField1?.backgroundColor = .white
        passwordTextField1?.placeholder = "Add your password"
        passwordTextField1?.layer.cornerRadius = 5
        passwordTextField1?.layer.borderColor = UIColor.black.cgColor
        passwordTextField1?.borderStyle = .roundedRect
        
        view.addSubview(passwordTextField1!)
        
        passwordTextField1?.translatesAutoresizingMaskIntoConstraints = false
        
        passwordTextField1?.topAnchor.constraint(equalTo: logInContainer!.topAnchor, constant: 90) .isActive = true
        passwordTextField1?.leadingAnchor.constraint(equalTo: logInContainer!.leadingAnchor, constant: 45) .isActive = true
        
        signInButton = UIButton(frame: CGRect(x: 100, y: 420, width: 200, height: 50))
        signInButton?.backgroundColor = .lightGray
        signInButton?.layer.cornerRadius = 12
        signInButton?.setTitle("Sign In", for: .normal)
        signInButton?.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        view.addSubview(signInButton!)
 
        arroba = UIImageView(frame: CGRect(x: 8, y: 23, width: 35, height: 35))
        arroba?.image = UIImage(named: "arroba")
        logInContainer?.addSubview(arroba!)
        
        eye = UIImageView(frame: CGRect(x: 8, y: 90, width: 35, height: 35))
        eye?.image = UIImage(named: "eye")
        logInContainer?.addSubview(eye!)
         
        
        //let buttonSigIn = UIButton(frame: .zero)
        //buttonSigIn.backgroundColor = UIColor.lightGray
        //buttonSigIn.setTitle(" NEXT ", for: .normal)
        //buttonSigIn.setTitleColor(.white, for: .normal)
        //buttonSigIn.translatesAutoresizingMaskIntoConstraints = false
        //buttonSigIn.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        //view.addSubview(buttonSigIn)
        //self.myButton = buttonSigIn
        
        //NSLayoutConstraint.activate([
        //buttonSigIn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        //buttonSigIn.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        //])
        
    }
        
        @objc func goToNext() {
            let nextView = ExercisesViewController()
            nextView.modalPresentationStyle = .fullScreen //Te pone una pantalla encima
            present(nextView, animated: true, completion: nil)
            
        
        
        
        
        
    }
    
}
