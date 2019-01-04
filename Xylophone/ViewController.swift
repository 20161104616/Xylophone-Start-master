

import UIKit
import AVFoundation  //音频视频库

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
//
//    //从项目文件夹中扩区文件路径
//    var xylophoneSound NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("noto1", ofType: "wav"))
//
//
//    var audioPlayer = AVAudioPlayer()
//
//
//
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        guard let url = Bundle.main.url(forResource: "note\(sender.tag)",withExtension:"wav") else {
            return
        }
        
        
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url,fileTypeHint: AVFileType.wav.rawValue)
            
            guard let player = player else {
                return
            }
            player.play()
        }catch let error {
            print(error.localizedDescription)
        }
        
        
        print(sender.tag)
        
        
        
        
    }
    
  

}

