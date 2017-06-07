//
//  BaseViewController.swift
//  Project
//
//  Created by 郑键 on 17/6/2.
//  Copyright © 2017年 inborn. All rights reserved.
//

import UIKit
import SceneKit
import SnapKit

@objc (BaseViewController)
class BaseViewController: UIViewController {
    
    private lazy var scnView: SCNView = {
        return SCNView.init()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = ColorUtail.utail.color2
        
        // create a new scene
        let scene = SCNScene()
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        // create and add a light to the scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = .ambient
        ambientLightNode.light!.color = UIColor.darkGray
        scene.rootNode.addChildNode(ambientLightNode)
        
        // retrieve the ship node
        //let ship = scene.rootNode.childNode(withName: "ship", recursively: true)!
        
        ///添加圆柱体
        let cylinder = SCNCylinder(radius:1,height:3)
        let node = SCNNode(geometry: cylinder)
        node.name = "tree"
        cylinder.firstMaterial?.diffuse.contents = ColorUtail.utail.color8
        scnView.autoenablesDefaultLighting = true
        scene.rootNode.addChildNode(node)
        
        ///圆柱体添加椎体
        for i in 1...3 {
            let cone = SCNNode(geometry: SCNCone(topRadius: 0, bottomRadius: 3, height: 3))
            cone.position.y = 2 * Float(i) + 1
            cone.geometry?.firstMaterial?.diffuse.contents = ColorUtail.utail.color9
            node.addChildNode(cone)
        }
        
        ///添加正方体
        for i in 1...3 {
            
            let present = SCNNode(geometry: SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0))
            present.geometry?.firstMaterial?.diffuse.contents = ColorUtail.utail.color10
            present.position.x = Float(i % 2) * 2
            present.position.z = Float(i / 2) * 2
            present.position.y = -1
            node.addChildNode(present)
        }
        
        // animate the 3d object
        let ship = scene.rootNode.childNode(withName: "tree", recursively: true)!
        ship.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: 1)))
        
        // retrieve the SCNView
        view.addSubview(scnView)
        scnView.snp.makeConstraints { (ConstraintMaker) in
            ConstraintMaker.bottom.equalToSuperview()
            ConstraintMaker.top.equalToSuperview().offset(64)
            ConstraintMaker.left.right.equalToSuperview()
        }
        
        // set the scene to the view
        scnView.scene = scene
        
        // allows the user to manipulate the camera
        scnView.allowsCameraControl = true
        
        // show statistics such as fps and timing information
        scnView.showsStatistics = true
        
        // configure the view
        scnView.backgroundColor = UIColor.yellow
        
        // add a tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        scnView.addGestureRecognizer(tapGesture)
    }

    func handleTap(_ gestureRecognize: UIGestureRecognizer) {
        // retrieve the SCNView
        
        // check what nodes are tapped
        let p = gestureRecognize.location(in: scnView)
        let hitResults = scnView.hitTest(p, options: [:])
        // check that we clicked on at least one object
        if hitResults.count > 0 {
            // retrieved the first clicked object
            let result: AnyObject = hitResults[0]
            
            // get its material
            let material = result.node!.geometry!.firstMaterial!
            
            // highlight it
            SCNTransaction.begin()
            SCNTransaction.animationDuration = 0.5
            
            // on completion - unhighlight
            SCNTransaction.completionBlock = {
                SCNTransaction.begin()
                SCNTransaction.animationDuration = 0.5
                
                material.emission.contents = UIColor.black
                
                SCNTransaction.commit()
            }
            
            material.emission.contents = UIColor.red
            
            SCNTransaction.commit()
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
