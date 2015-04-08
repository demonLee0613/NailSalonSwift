//
//  ZXY_MIMainVCell.swift
//  NailSalonSwift
//
//  Created by 宇周 on 15/4/2.
//  Copyright (c) 2015年 宇周. All rights reserved.
//

import UIKit

class ZXY_MIMainVCell: UITableViewCell {

    @IBOutlet weak var isArtistLbl: UILabel!
    @IBOutlet weak var isArtistImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var backImg: UIImageView!
    
    @IBOutlet weak var isLogin: UILabel!
    
    
    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var settingBtn: UIButton!
    class func cellID() -> String
    {
        return "ZXY_MIMainVCellID"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.isLogin.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.3)
        self.isLogin.layer.cornerRadius = 5
        self.isLogin.layer.borderColor  = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5).CGColor
        self.isLogin.layer.borderWidth  = 1
        self.isLogin.layer.masksToBounds = true
        // Initialization code
    }

    func userLoginMethod() -> Void
    {
        self.nameLbl.hidden = false
        self.isArtistImg.hidden = false
        self.isArtistLbl.hidden = false
        self.userAvatar.hidden  = false
        isLogin.hidden = true
    }
    
    func userNotLoginMethod() -> Void
    {
        self.nameLbl.hidden = true
        self.isArtistImg.hidden = true
        self.isArtistLbl.hidden = true
        self.userAvatar.hidden  = true
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}