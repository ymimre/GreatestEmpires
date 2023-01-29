//
//  EmpireDetailViewController.swift
//  Greatest Empires
//
//  Created by user229720 on 18.11.2022.
//

import UIKit

class EmpireDetailViewController: UIViewController {

    @IBOutlet weak var empireImageView: UIImageView!
    @IBOutlet weak var empireNameLabel: UILabel!
    @IBOutlet weak var empireSizeLabel: UILabel!
    @IBOutlet weak var empireTimePeriodLabel: UILabel!
    
    let empireDataSource = EmpireDataSource()
    var empireIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if  let empireIndex = empireIndex,
            let empire = empireDataSource.getEmpire(for: empireIndex) {
            empireImageView.image = UIImage(named: empire.imageName)
            empireNameLabel.text = "\(empire.empireName)"
            empireSizeLabel.text = "\(empire.sizeOfEmpire) Million Square Kilometers"
            empireTimePeriodLabel.text = "\(empire.foundingYear) - \(empire.collapseYear)"
        }else {
            empireImageView.image = nil
            empireNameLabel.text = "N/A"
            empireSizeLabel.text = "N/A"
            empireTimePeriodLabel.text = "N/A"
        }
            
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
