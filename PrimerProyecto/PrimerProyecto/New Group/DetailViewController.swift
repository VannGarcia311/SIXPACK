//
//  DetailViewController.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 06/07/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var exerciseName : UILabel?
    var exerciseContent: UIView?
    var exerciseCover: UIImageView?
    var exerciseDescription : UILabel?
    var exerciseRepeticion: UILabel?
    var exercise: Exercise?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        initUI()

        
    }
    init(exercise: Exercise?) {
        self.exercise = exercise
        super.init(nibName: nil, bundle: nil)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
     func initUI(){
         
         exerciseContent = UIView(frame: CGRect(x: 10, y: 100, width: Constants.width - 20 , height: Constants.height - 200))
         exerciseContent?.backgroundColor = .white
         exerciseContent?.layer.cornerRadius = 10
         view.addSubview(exerciseContent!)
         
         exerciseName = UILabel(frame: CGRect(x: 0, y: 240, width: Constants.width - 20, height: 20))
         exerciseName?.text = exercise?.name
         exerciseName?.textAlignment = .center
         exerciseName?.font = .boldSystemFont(ofSize: 18)
         exerciseContent?.addSubview(exerciseName!)
         
         exerciseDescription = UILabel(frame: CGRect(x: 30, y: 270, width: Constants.width - 90, height: 200))
         exerciseDescription?.text = exercise?.description
         exerciseDescription?.numberOfLines = 0
         exerciseDescription?.textAlignment = .justified
         exerciseDescription?.textAlignment = .center
         exerciseDescription?.font = .boldSystemFont(ofSize: 18)
         exerciseContent?.addSubview(exerciseDescription!)
         
         exerciseRepeticion = UILabel(frame: CGRect(x: 30, y: 570, width: Constants.width/2 , height: 20))
         exerciseRepeticion?.text = "Duration:\(exercise?.repeticion ?? 0) min "
         exerciseRepeticion?.textAlignment = .left
         exerciseRepeticion?.font = .systemFont(ofSize: 18)
         exerciseContent?.addSubview(exerciseRepeticion!)
         
         
         exerciseCover = UIImageView (frame: CGRect(x: Constants.width/2 - 65, y: 20, width: 120, height: 200))
         exerciseCover?.image = UIImage(named: exercise?.cover ?? "logo")
         exerciseCover?.layer.cornerRadius = 10
         exerciseCover?.layer.masksToBounds = true
         exerciseContent?.addSubview(exerciseCover!)
         
         
     }
}
