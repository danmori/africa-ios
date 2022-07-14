//
//  MapView.swift
//  Africa Not SwiftUI
//
//  Created by Dan Mori on 13/07/22.
//

import UIKit
import MapKit

class MapView: UIView {
    
    lazy var mapView: MKMapView = MKMapView(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        setupMap()
    }
    
    private func setupMap() {
        mapView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mapView)
        mapView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
}
