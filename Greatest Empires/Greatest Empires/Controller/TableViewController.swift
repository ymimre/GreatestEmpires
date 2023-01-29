//
//  TableViewController.swift
//  Greatest Empires
//
//  Created by user229720 on 17.11.2022.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var empiresTableView: UITableView!
    
    private let empireDataSource = EmpireDataSource()
    
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
            let cell = sender as? UITableViewCell,
            let indexPath = empiresTableView.indexPath(for: cell),
            let empireDetailController = segue.destination as? EmpireDetailViewController {
            empireDetailController.empireIndex = indexPath.row
        }
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return empireDataSource.getNumberOfEmpires()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "EmpireCell") as? EmpiresTableViewCell
        else{
           return UITableViewCell()
       }
        if let empire = empireDataSource.getEmpire(for: indexPath.row) {
            cell.flagImageView.image = UIImage(named: empire.imageName)
            cell.empireNameLabel.text = "\(empire.empireName)"
        }
        return cell
    }
}
