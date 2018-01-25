//
//  ViewController.swift
//  springs_clima
//
//  Created by Maestro on 24/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblHora: UILabel!
    @IBOutlet weak var lblLugar: UILabel!
    @IBOutlet weak var imgSol: UIImageView!
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var viewBG: UIView!
    
    @IBOutlet weak var lblHora1: UILabel!
    @IBOutlet weak var imgSol1: UIImageView!
    @IBOutlet weak var bg1: UIView!
    
    @IBOutlet weak var lblHora2: UIButton!
    @IBOutlet weak var imgSol2: UIImageView!
    @IBOutlet weak var bg2: UIView!
    
    @IBOutlet weak var lblHora3: UIButton!
    @IBOutlet weak var imgSol3: UIImageView!
    @IBOutlet weak var bg3: UIView!
    
    
    
    
    @IBAction func btnTemp1(_ sender: Any) {
        
        lblTemp.text = "25º"
        lblHora.text = "3:00 pm"
        imgSol.image = UIImage(named: "weather 2")
        
        self.lblHora.alpha = 0.0
        self.imgSol.alpha = 0.0
        self.lblTemp.alpha = 0.0
        
        self.lblTemp.center.x -= 30
        self.imgSol.center.x -= 30
        self.lblHora.center.y -= 30
        
        UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.lblHora.alpha = 1.0
            self.imgSol.alpha = 1.0
            self.lblTemp.alpha = 1.0
            
            self.lblTemp.center.x += 30
            self.imgSol.center.x += 30
            self.lblHora.center.y += 30
            
            //248 210 147
            
            self.viewBG.backgroundColor = UIColor(red: 248.0 / 255.0, green: 210.0 / 255.0, blue: 147.0 / 255.0, alpha: 1.0)
            
        }, completion: nil)
    
    }
    
    @IBAction func btnTemp2(_ sender: Any) {
        
        lblTemp.text = "24º"
        lblHora.text = "4:00 pm"
        imgSol.image = UIImage(named: "weather 2")
        
        self.lblHora.alpha = 0.0
        self.imgSol.alpha = 0.0
        self.lblTemp.alpha = 0.0
        
        self.lblTemp.center.x -= 30
        self.imgSol.center.x -= 30
        self.lblHora.center.y -= 30
        
        UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.lblHora.alpha = 1.0
            self.imgSol.alpha = 1.0
            self.lblTemp.alpha = 1.0
            
            self.lblTemp.center.x += 30
            self.imgSol.center.x += 30
            self.lblHora.center.y += 30
            
            self.viewBG.backgroundColor = UIColor(red: 248.0 / 255.0, green: 210.0 / 255.0, blue: 147.0 / 255.0, alpha: 1.0)
            
        }, completion: nil)

    }
    
    @IBAction func btnTemp3(_ sender: Any) {
        
        lblTemp.text = "22º"
        lblHora.text = "5:00 pm"
        imgSol.image = UIImage(named: "weather 3")
        
        self.lblHora.alpha = 0.0
        self.imgSol.alpha = 0.0
        self.lblTemp.alpha = 0.0
        
        self.lblTemp.center.x -= 30
        self.imgSol.center.x -= 30
        self.lblHora.center.y -= 30
        
        UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.lblHora.alpha = 1.0
            self.imgSol.alpha = 1.0
            self.lblTemp.alpha = 1.0
            
            self.lblTemp.center.x += 30
            self.imgSol.center.x += 30
            self.lblHora.center.y += 30
            
            //148 180 235
            
            self.viewBG.backgroundColor = UIColor(red: 148.0 / 255.0, green: 180.0 / 255.0, blue: 235.0 / 255.0, alpha: 1.0)
            
        }, completion: nil)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        lblFecha.alpha = 0.0
        lblHora.alpha = 0.0
        lblLugar.alpha = 0.0
        lblFecha.alpha = 0.0
        imgSol.alpha = 0.0
        lblTemp.alpha = 0.0
        
        bg1.alpha = 0.0
        bg2.alpha = 0.0
        bg3.alpha = 0.0
        
        bg1.center.y += 30
        bg2.center.y += 30
        bg3.center.y += 30
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 1.9, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.lblFecha.alpha = 1.0
            self.lblHora.alpha = 1.0
            self.lblLugar.alpha = 1.0
            self.lblFecha.alpha = 1.0
            self.imgSol.alpha = 1.0
            
            self.imgSol.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.lblTemp.alpha = 1.0
           
            
        }, completion: { _ in
            
            UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: [], animations: {

                self.bg1.alpha = 1.0
                self.bg2.alpha = 1.0
                self.bg3.alpha = 1.0
                
                self.bg1.center.y -= 30
                self.bg2.center.y -= 30
                self.bg3.center.y -= 30
                
                
            }, completion: nil)
            
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

