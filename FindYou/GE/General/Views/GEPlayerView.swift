//
//  GEPlayerView.swift
//  SSJXLM
//
//  Created by QTJT on 2017/8/1.
//  Copyright © 2017年 耿晓鹏. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class GEPlayerView: UIView {
    let playControl = AVPlayerViewController()
    var url : URL?
    init(url:URL,frame:CGRect) {
        super.init(frame: frame)
        
        self.url = url
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI(){
        let player = AVPlayer(url: url!)
        playControl.player = player
        playControl.view.frame = self.frame
        playControl.showsPlaybackControls = true
        self.addSubview(playControl.view)
        
    }
    func starPlay(){
        playControl.player?.play()
    }

    
    
}
