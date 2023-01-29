//
//  CollectionViewController.swift
//  Greatest Empires
//
//  Created by user229720 on 18.11.2022.
//

import UIKit

class CollectionViewController: UIViewController {

    private let empireDataSource = EmpireDataSource()
    
    @IBOutlet weak var empiresCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if
            let cell = sender as? EmpiresCollectionViewCell,
            let indexPath = empiresCollectionView.indexPath(for: cell),
            let detailController = segue.destination as? EmpireDetailViewController {
            detailController.empireIndex = indexPath.item
        }
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return empireDataSource.getNumberOfEmpires()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EmpireCollectionCell", for: indexPath) as? EmpiresCollectionViewCell
        else{
            return UICollectionViewCell()
        }
        
        if let empire = empireDataSource.getEmpire(for: indexPath.row) {
            cell.empireFlagImageView.image = UIImage(named: empire.imageName)
        }
        return cell
    }
}
