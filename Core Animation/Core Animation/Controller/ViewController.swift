//
//  ViewController.swift
//  Core Animation
//
//  Created by Abul Kashem on 23/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coreAnimationTableView: UITableView!
    
    var animationList = ["RingAnimation"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    func setupTableView(){
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        coreAnimationTableView.register(nib, forCellReuseIdentifier: "TableViewCell")
        coreAnimationTableView.dataSource = self
        coreAnimationTableView.delegate = self
        
    }

}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animationList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = coreAnimationTableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.animationLabel.text = animationList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let stVC = storyboard?.instantiateViewController(withIdentifier: "RingAnimationViewController") as! RingAnimationViewController
            navigationController?.pushViewController(stVC, animated: true)
        default:
            break
        }
    }
    
}
