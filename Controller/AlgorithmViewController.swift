//
//  ViewController.swift
//  new baby
//
//  Created by Fleck, Zachary on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController {
    
    public class AlgorithmViewcontroller : UIViewController
    {
        
        @IBOutlet weak var algorithmText: UILabel!
        
        @IBOutlet weak var swiftImage: UIImageView!
        
        
        public class viewDidLoad() -> Void
    {
        super.viewDidLoad()
        }
        
        public func formatAlgorithm() -> Void
        {
            let stepOne : String = "first you click start new praject"
            let stepTwo : String = "then add a name"
            let stepThree : String = "Organize files"
            
            let algorithm = [stepOne, stepTwo, stepThree]
            
            let attributesDictionary = [NSAttributedStringKey.font : algorithmText.front]
            let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
            
            for step in algorithm
            {
                let bullet : String = "🍑"
                let formattedStep : String = "\n\(bullet)  \(step)"
                let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep);
                let outlineStyle = createOutlineStyle()
                
                
                attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range:
                    NSMakeRange(0,attributedStringStep.length))
                
                fullAttributedString.append(attributedStringStep)
            }
            algorithmText.attributedText = fullAttributedString
        }
        private func createOutlineStyle() -> NSParagraphStyle
        {
            let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
            
            outlineStyle.alignment = .left
            outlineStyle.defaultTabInterval = 15
            outlineStyle.firstLineHeadIndent = 20
            outlineStyle.headIndent = 35
            
            return outlineStyle
        }
    }
    
    
}
