//
//  SignInViewController.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 28/06/23.


import UIKit

class SignInViewController: UIViewController {
    
    var titleLabel1: UILabel?
    var sigInContainer : UIView?
    var emailTextField : UITextField?
    var nameTextFiel : UITextField?
    var passwordTextField :UITextField?
    var arroba : UIImageView?
    var submitButton : UIButton?
    var name : UIImageView?
    var eye : UIImageView?
    
    
    let paddingLeft : CGFloat = 70
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        intitUI()
        
    }
    
    func intitUI(){
        
        titleLabel1 = UILabel(frame: CGRect(x: 120, y: -20, width: 600, height: 190))
        titleLabel1?.text = "CREATE ACCOUNT"
        titleLabel1?.font = UIFont(name: "Arial Bold", size: 20)
        titleLabel1?.textColor = UIColor .bluebackgroundColor
        view.addSubview(titleLabel1!)
        
        
        //sigInContainer = UIView(frame: CGRect(x: 120, y: 200, width:300, height:150))
        sigInContainer = UIView()
        sigInContainer?.backgroundColor = .white
        sigInContainer?.layer.cornerRadius = 10
        view.addSubview(sigInContainer!)
        
        sigInContainer?.translatesAutoresizingMaskIntoConstraints = false
        
        sigInContainer?.topAnchor.constraint(equalTo: view.topAnchor, constant: 150) .isActive = true
        sigInContainer?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeft).isActive = true
        sigInContainer?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70) .isActive = true
        sigInContainer?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -440) .isActive = true
        
        
        emailTextField = UITextField()
        emailTextField = UITextField(frame: CGRect(x: 100, y: 150, width: 200, height: 300))
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = "Add your e.mail"
        emailTextField?.layer.cornerRadius = 5
        emailTextField?.layer.borderColor = UIColor.black.cgColor
        emailTextField?.borderStyle = .roundedRect
        view?.addSubview(emailTextField!)
        
        emailTextField?.translatesAutoresizingMaskIntoConstraints = false
        emailTextField?.topAnchor.constraint(equalTo: sigInContainer!.topAnchor,constant: 25).isActive = true
        //emailTextField?.centerXAnchor.constraint(equalTo: nameTextFiel?.centerXAnchor, constant:  100 ) .isActive = true
        emailTextField?.leadingAnchor.constraint(equalTo: sigInContainer!.leadingAnchor, constant: 45).isActive = true
        
        nameTextFiel = UITextField(frame: CGRect(x: 50, y: 80 , width: 180 , height: 100))
        nameTextFiel?.backgroundColor = .white
        nameTextFiel?.placeholder = "Add your name"
        nameTextFiel?.layer.cornerRadius = 5
        nameTextFiel?.layer.borderColor = UIColor.black.cgColor
        nameTextFiel?.borderStyle = .roundedRect
        //sigInContainer?.addSubview(nameTextFiel!)
        view.addSubview(nameTextFiel!)
        
        nameTextFiel?.translatesAutoresizingMaskIntoConstraints = false
        
        nameTextFiel?.topAnchor.constraint(equalTo: sigInContainer!.topAnchor, constant: 75) .isActive = true
        nameTextFiel?.leadingAnchor.constraint(equalTo: sigInContainer!.leadingAnchor, constant: 45) .isActive = true
        nameTextFiel?.trailingAnchor.constraint(equalTo: sigInContainer!.trailingAnchor,constant: -45).isActive = true
        
        passwordTextField = UITextField(frame: CGRect(x: 50, y: 300, width: 200, height: 35))
        passwordTextField?.backgroundColor = .white
        passwordTextField?.placeholder = "Add your password"
        passwordTextField?.layer.cornerRadius = 5
        passwordTextField?.layer.borderColor = UIColor.black.cgColor
        passwordTextField?.borderStyle = .roundedRect
        sigInContainer?.addSubview(passwordTextField!)
        
        passwordTextField?.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField?.topAnchor.constraint(equalTo: sigInContainer!.topAnchor,constant: 125).isActive = true
        //passwordTextField?.centerXAnchor.constraint(equalTo: nameTextFiel?.centerXAnchor, constant:  0 ) .isActive = true
        passwordTextField?.leadingAnchor.constraint(equalTo: sigInContainer!.leadingAnchor, constant: 45).isActive = true
        
        
        
        
        arroba = UIImageView(frame: CGRect(x: 3, y: 23, width: 35, height: 35))
        arroba?.image = UIImage(named: "arroba")
        sigInContainer?.addSubview(arroba!)
        
        eye = UIImageView(frame: CGRect(x: 3, y: 125, width: 35, height: 35))
        eye?.image = UIImage(named: "eye")
        sigInContainer?.addSubview(eye!)
        
        name = UIImageView(frame: CGRect(x: 3, y: 70, width: 35, height: 35))
        name?.image = UIImage(named: "name")
        sigInContainer?.addSubview(name!)
        
        submitButton = UIButton(frame: CGRect(x: 100, y: 420, width: 200, height: 50))
        submitButton?.backgroundColor = .lightGray
        submitButton?.layer.cornerRadius = 12
        submitButton?.setTitle("Submit", for: .normal)
        submitButton?.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        view.addSubview(submitButton!)
        
        
        
    }
    
    @objc func goToNext() {
        let nextView = ExercisesViewController()
        nextView.modalPresentationStyle = .fullScreen //Te pone una pantalla encima
        present(nextView, animated: true, completion: nil)
        
        
        
    }
    
}
