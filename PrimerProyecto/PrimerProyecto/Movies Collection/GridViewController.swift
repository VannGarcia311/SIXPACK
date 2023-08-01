//
//  GridViewController.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 31/07/23.
//

import UIKit

class GridViewController: UIViewController {

  
    
  
    var exercisesCollectionView: UICollectionView?
    var exercisesData = ExercisesData()
    var showMoreButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initUI()
        exercisesData.getImage()
        setConstrains()
        // Do any additional setup after loading the view.
    }
    
    func initUI (){
        
        exercisesCollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = Constants.width/15
            layout.minimumInteritemSpacing = Constants.width/10
            
            let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collection.register(ExercisesCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
            collection.isPrefetchingEnabled = true
            collection.translatesAutoresizingMaskIntoConstraints = false
            collection.backgroundColor = .clear
            collection.showsHorizontalScrollIndicator = true
            return collection
        }()
        
        let showMoreButton = UIButton()
        showMoreButton.setTitleColor(UIColor.blue, for: .normal)
        showMoreButton.setTitle("Ver más", for: .normal)
        showMoreButton.backgroundColor = UIColor.white
        showMoreButton.layer.cornerRadius = 5
        showMoreButton.translatesAutoresizingMaskIntoConstraints = false
        showMoreButton.addTarget(self, action: #selector(goToGrid), for: .touchUpInside)
        self.showMoreButton = showMoreButton
        view.addSubview(showMoreButton)
    }
    
    @objc func goToGrid(){
        let goToGrid = GridViewController()
        goToGrid.modalPresentationStyle = .popover
        present(goToGrid,animated: true, completion: nil)
    
}
    
    func setConstrains(){
        guard let exercisesCollectionView = exercisesCollectionView, let showMoreButton = showMoreButton else { return }
        
        exercisesCollectionView.delegate = self
        exercisesCollectionView.dataSource = self
        view.addSubview(exercisesCollectionView)
            
        NSLayoutConstraint.activate([
        exercisesCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
        exercisesCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        exercisesCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.8),
        exercisesCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor,multiplier: 0.20)
            ])
            
        NSLayoutConstraint.activate([
        showMoreButton.topAnchor.constraint(equalTo: exercisesCollectionView.bottomAnchor, constant: 0),
        showMoreButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        showMoreButton.widthAnchor.constraint(equalToConstant: 40),
        showMoreButton.heightAnchor.constraint(equalToConstant: 30)
            ])
            
        }
        
    }

    extension GridViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return exercisesData.imageSource?.exerciseCategory?[section].exercisesImage?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = exercisesCollectionView?.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ExercisesCollectionViewCell
        let exercisesImage = exercisesData.imageSource?.exerciseCategory?[indexPath.section].exercisesImage?[indexPath.item]
        cell.setData(exerciseImage: exercisesImage!)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.width / 5 - 10 , height: Constants.height / 6 - 30)
        
        func numberOfSeccion(in collectionView: UICollectionView) -> Int {
            1
        }
        
    }
}

