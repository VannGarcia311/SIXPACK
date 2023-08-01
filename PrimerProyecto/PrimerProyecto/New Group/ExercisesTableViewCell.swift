//
//  ExercisesTableViewCell.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 03/07/23.
//

import UIKit

class ExercisesTableViewCell: UITableViewCell {
    
    var exerciseName : UILabel?
    var exerciseDescription: UILabel?
    var exerciseRepeticion: UILabel?
    var exerciseContent: UIView?
    var exerciseCover: UIImageView?
    
    var exercise: Exercise?
    
    init(exercise: Exercise) {
        super.init(style: .default, reuseIdentifier: nil)
        self.exercise = exercise
        self.backgroundColor = .white
        initUI()
        
    }
   
    func initUI(){
        
        exerciseContent = UIView(frame: CGRect(x: 0, y: 5, width: Constants.width - 40 , height: Constants.height/7 ))
        exerciseContent?.backgroundColor = .white
        exerciseContent?.layer.cornerRadius = 10
        self.addSubview(exerciseContent!)
        
        exerciseName = UILabel(frame: CGRect(x: 80, y: 10, width: 250, height: 20))
        exerciseName?.text = exercise?.name
        exerciseName?.textAlignment = .left
        exerciseName?.font = .boldSystemFont(ofSize: 18)
        exerciseContent?.addSubview(exerciseName!)
        
        //exerciseDescription = UILabel(frame: CGRect(x: 30, y:270 , width: -90, height: 20))
        //exerciseDescription?.text = exercise?.description
        //exerciseDescription?.numberOfLines = 0
        //exerciseDescription?.textAlignment = .justified
        //exerciseDescription?.textAlignment = .center
        //exerciseDescription?.font = .boldSystemFont(ofSize: 18)
        //exerciseDescription?.addSubview(exerciseDescription!)
        
        exerciseCover = UIImageView (frame: CGRect(x: 10, y: 5, width: 60, height: 95))
        exerciseCover?.image = UIImage(named: exercise?.cover ?? "logo")
        exerciseCover?.layer.cornerRadius = 10
        exerciseCover?.layer.masksToBounds = true
        exerciseContent?.addSubview(exerciseCover!)
        
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init has not been implemented")
    }
    

}
