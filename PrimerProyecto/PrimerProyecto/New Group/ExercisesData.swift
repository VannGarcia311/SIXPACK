//
//  ExerciseData.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 28/07/23.
//

import Foundation


class ExercisesData {
    
    var imageSource: CollectionExercisesObject?
    var dataSource: ExcerciseObj?
    
    func getImage(){
        let rodilla = ExercisesImage(image: "rodilla")
        let elevacion = ExercisesImage(image: "elevacion")
        let crunchelevar = ExercisesImage(image: "crunchelevar")
        let crunchmed = ExercisesImage(image: "crunchmed")
        let elevar = ExercisesImage(image: "elevar")
        let recent = ExerciseCategory(name: "Recent", exercisesImage: [rodilla, elevacion, crunchelevar,crunchmed,elevar])
        
        let Image = CollectionExercisesObject(exerciseCategory: [recent])
        
        imageSource = Image
        
        
        
    }
    
    func getData(){
        
        let exercise1 = Exercise(name: "Rodilla Cruzado", description: "Colocate de rodillas con tus manos en el piso a lo ancho de tus hombros. Aprieta el abdomen y con la espalda recta estira tu brazo izquierdo y tu pierna derecha a modo que queden parelelos en el suelo", cover: "rodilla", repeticion: 30)
        let exercise2 = Exercise(name: "Elevación Frontales", description: "Recuestate sobre tu espalda, eleva tus piernas formando un angulo de 90°, estira tus brazos tratando de tocar las puntas de tus pies", cover: "elevacion", repeticion: 30)
        let exercise3 = Exercise(name: "Crunch Elevado", description: "Recuestate sobre tu espalda, coloca los brazos a tus costados y estira las piernas. Dobla las rodillas 45° y lleva las piernas hacia tu pecho, baja las piernas al pecho y repite ", cover: "crunchelevar", repeticion: 30)
        
        let exercise4 = Exercise(name: "Crunch Medio", description: "Colocate sentado en el suelo con la manos apoyadas en este, dobla las rodillas hasta formar un angulo de 45° y estiralas repetidamente ", cover: "crunchmed", repeticion: 30)
        let exercise5 = Exercise(name: "Elevaciones a 1 Pierna", description: "Recuestate sobre tu espalda coloca tus brazos a los costados y tus piernas estiradas, sube primero una pierna estiradas hasta hacer un angulo de 90° y despues la otra ", cover: "elevar", repeticion: 30)
        let exercise6 = Exercise(name: "Elevaciones laterales", description: "Recuestate de lado, coloca tu manos sobre la cabeza y estira las piernas, levanta las piernas e impulsa tu trono hacia arriba ", cover: "laterales", repeticion: 30)
        
        
        let categoryAbdomenAlto = Category(name:"AbodomenAlto",exercises: [exercise1,exercise2,exercise3])
        let categoryAbdomenBajo = Category(name:"AbdomenBajo",exercises: [exercise4,exercise5,exercise6])

        let exercisesBD = ExcerciseObj(category:[categoryAbdomenAlto, categoryAbdomenBajo])
        
        dataSource = exercisesBD
        
    }
    
}
