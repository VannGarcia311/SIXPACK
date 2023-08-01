//
//  ExercisesViewController.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 30/06/23.
//

import UIKit

class ExercisesViewController : UIViewController {
    
    var tableView : UITableView?
    var exercisesCollectionView: UICollectionView?
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var exercisesData = ExercisesData()
    var showMoreButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initUI()
        exercisesData.getData()
        exercisesData.getImage()
        setConstrains()
        // Do any additional setup after loading the view.
    }
    
    func initUI(){
        tableView = UITableView(frame: CGRect(x: 10, y: 200, width: width - 20, height: height - 50))
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
        
        exercisesCollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
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

extension ExercisesViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisesData.dataSource?.category?[section].exercises?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let exercise = exercisesData.dataSource?.category?[indexPath.section].exercises?[indexPath.row]
        let cell = ExercisesTableViewCell(exercise: exercise!)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return exercisesData.dataSource?.category?.count ?? 0 // Operador de coalecensia
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return exercisesData.dataSource?.category?[section].name ?? ""
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("I am in the  categoria \(indexPath.section) and the row \(indexPath.row)")
        
        
        let exercise = exercisesData.dataSource?.category?[indexPath.section].exercises?[indexPath.row]
        
        let detailViewController = DetailViewController(exercise: exercise)
        detailViewController.modalPresentationStyle = .popover
        present(detailViewController, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        Constants.height/7
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        
        view.backgroundColor = .white
        let image = UIImageView(frame: CGRect(x: 5, y: 5, width: 30, height: 30))
        image.image = UIImage(named: "caticon")
        image.tintColor = .bluebackgroundColor
        view.addSubview(image)
        
        let label = UILabel(frame: CGRect(x: 40, y: 5, width: 130, height: 20))
        label.textColor = .bluebackgroundColor
        label.text = exercisesData.dataSource?.category?[section].name ?? ""
        label.font = .boldSystemFont(ofSize: 25)
        view.addSubview(label)
        
        return view
    }
}

    extension ExercisesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
