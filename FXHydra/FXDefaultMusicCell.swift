//
//  FXDefaultMusicCell.swift
//  FXHydra
//
//  Created by kioshimafx on 3/14/16.
//  Copyright © 2016 FXSolutions. All rights reserved.
//

import UIKit

class FXDefaultMusicCell: UITableViewCell {

    var audioAristLabel         : AttributedLabel
    var audioTitleLabel         : AttributedLabel
    var audioDurationTime       : AttributedLabel!
    var audioBitrate            : AttributedLabel!
    var audioTimeLabel          : AttributedLabel!
    
    var downloadedImage         : UIImageView!
    var bitRateBackgroundImage  : UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        self.audioTitleLabel = AttributedLabel()
        self.audioTitleLabel.font = UIFont(name: "Avenir-Heavy", size: 15)!
        self.audioTitleLabel.textColor = UIColor ( red: 0.9508, green: 0.9508, blue: 0.9508, alpha: 1.0 )
        self.audioTitleLabel.backgroundColor = UIColor.clearColor()
        
        self.audioAristLabel = AttributedLabel()
        self.audioAristLabel.font = UIFont(name: "HelveticaNeue-Light", size: 13)!
        self.audioAristLabel.textColor = UIColor ( red: 0.7805, green: 0.7768, blue: 0.7843, alpha: 1.0 )
        self.audioAristLabel.backgroundColor = UIColor.clearColor()
        
        self.audioBitrate = AttributedLabel()
        self.audioBitrate.font = UIFont(name: "Avenir-Medium", size: 12)!
        self.audioBitrate.textColor = UIColor.whiteColor()
        self.audioBitrate.backgroundColor = UIColor.clearColor()
        self.audioBitrate.contentAlignment = .Center
        
        self.audioTimeLabel = AttributedLabel()
        self.audioTimeLabel.font = UIFont(name: "Avenir-Heavy", size: 13)!
        self.audioTimeLabel.textColor = UIColor.whiteColor()
        self.audioTimeLabel.backgroundColor = UIColor.clearColor()
        self.audioTimeLabel.contentAlignment = .Center
        
        self.bitRateBackgroundImage = UIImageView()
        
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        
        self.downloadedImage = UIImageView()
        
        self.contentView.addSubview(self.downloadedImage)
        self.contentView.addSubview(self.audioAristLabel)
        self.contentView.addSubview(self.audioTitleLabel)
        
        self.contentView.addSubview(self.bitRateBackgroundImage)
        self.contentView.addSubview(self.audioBitrate)
        self.contentView.addSubview(self.audioTimeLabel)
        
        
        self.contentView.backgroundColor = UIColor.clearColor()
        self.backgroundColor = UIColor.clearColor()
        
        
        let colorView = UIView()
        colorView.backgroundColor = UIColor ( red: 0.6037, green: 0.6037, blue: 0.6037, alpha: 0.195258620689655 )
        
        self.selectedBackgroundView = colorView
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        self.audioTitleLabel.frame = CGRectMake(self.separatorInset.left, 10, self.contentView.frame.width-70, 20)
        self.audioAristLabel.frame = CGRectMake(self.separatorInset.left, 40, self.contentView.frame.width-70, 20)
        
        self.downloadedImage.frame = CGRectMake(self.contentView.frame.width-35, 25, 20, 20)
        
        self.audioTimeLabel.frame = CGRectMake(5, 10, 40, 20)
        self.bitRateBackgroundImage.frame = CGRectMake(10, 40, 30, 20)
        self.audioBitrate.frame = CGRectMake(10, 40, 30, 20)
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        
    }
    

}
