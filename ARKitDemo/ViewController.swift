//
//  ViewController.swift
//  ARKitDemo
//
//  Created by Christopher Mayfield on 11/19/17.
//  Copyright © 2017 Christopher Mayfield. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //world-tracking function
    
    //The world tracking configuration tracks the device’s orientation and position. It also detects real-world surfaces seen through the device’s camera.
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }
    
    //In the viewWillDisappear(_:) method, we simply tell our AR session to stop tracking motion and processing image for the view’s content.
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }

   
}


