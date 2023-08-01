//
//  MoviesObject.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 06/07/23.
//

import Foundation


    class CollectionExercisesObject {
        var exerciseCategory : [ExerciseCategory]?
       /// var title: String?
        
        init(exerciseCategory: [ExerciseCategory]?) {
            self.exerciseCategory = exerciseCategory
        
        }
        
    }

    class ExerciseCategory {
        var name : String?
        var exercisesImage : [ExercisesImage]?
        
        init(name: String?, exercisesImage: [ExercisesImage]?) {
            self.name = name
            self.exercisesImage = exercisesImage
        }
    }

    class ExercisesImage {
        var image: String?
        
        init(image: String? ) {
            self.image = image
        }
        
    }

