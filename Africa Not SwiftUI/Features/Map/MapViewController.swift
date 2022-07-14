//
//  MapViewController.swift
//  Africa Not SwiftUI
//
//  Created by Dan Mori on 13/07/22.
//

import UIKit

class MapViewController: UIViewController {

    lazy var mapView:MapView = MapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        super.loadView()
        view = mapView
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
