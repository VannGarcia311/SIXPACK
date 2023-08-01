//
//  ExercisesCollectionViewCell.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 28/07/23.
//
import UIKit

class ExercisesCollectionViewCell : UICollectionViewCell {
    
    var imageExercise : UIImageView?

    
    override init(frame: CGRect){
        super.init(frame: .zero)
        
        self.backgroundColor = .black
        imageExercise = UIImageView(frame: CGRect(x: 6, y: 8, width: Constants.width/7, height: Constants.height/9))
        imageExercise?.backgroundColor = .white
        imageExercise?.contentMode = .scaleAspectFit
        imageExercise?.image = UIImage(named:"")
        self.addSubview(imageExercise!)
    }
    
    func setData(exerciseImage: ExercisesImage) {
        imageExercise?.image = UIImage(named: exerciseImage.image ?? "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: has not been implemented")
    }
}


