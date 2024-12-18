//
//  HomeScreenViewController.swift
//  Sample_Cafe
//
//  Created by Aung Kyaw Phyo on 06/11/2024.
//

import UIKit

class HomeScreenViewController: SampleViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var productCollection: UICollectionView!
    @IBOutlet weak var shopCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
