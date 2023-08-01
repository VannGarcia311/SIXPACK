//
//  ExerciseViewCell.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 28/07/23.
//import Foundation

class ExercisesCollectionViewCell : UICollectionViewCell
    
    
    var exercisesImage : UIImageView = {
  
    }
    
    override init(frame: CGRect){
        super.init(frame: .zero)
        
        self.backgroundColor = .black
        exercisesImage = UIImageView(frame: CGRect(x: 6, y: 8, width: Constants.width/7, height: Constants.height/9))
        exercisesImage?.backgroundColor = UIcolor.white
        exercisesImage?.contentMode = .scaleAspectFit
        exercisesImage?.image = UIImage(named:"logo")
        self.addSubview(exercisesImage!)
    }
    
    func setData(exercisesImage:ExercisesImage) {
        ExercisesImage?.image = UIImage (named: exerciseImage.image ?? "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: has not been implemented")
    }
}




