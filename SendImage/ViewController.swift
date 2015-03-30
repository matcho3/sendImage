


import UIKit
import WatchCoreDataProxy


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        イメージをセットして、Watchに送る
        WatchCoreDataProxy.sharedInstance.sharedAppGroup = "group.matcho3tk.sendImage"
        WatchCoreDataProxy.sharedInstance.sendImageToWatch(image)
        WatchCoreDataProxy.sharedInstance.sendStringToWatch(label.text!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapOpenGaralleryButton(sender: AnyObject) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .PhotoLibrary
        self.presentViewController(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            thumbImageView.image = selectedImage
        }
    }
}






//        let bounds = CGRectInset(self.view.bounds, 10, 10)
//        chart.frame = CGRectInset(CGRectMake(bounds.origin.x, bounds.origin.y + 100, bounds.size.width, bounds.size.height / 2), 10, 10)
//        chart.backgroundColor = UIColor.blackColor()
//        chart.delegate = self
//        self.view.addSubview(chart)




//        UIGraphicsBeginImageContext(chart.bounds.size)
//        chart.layer.renderInContext(UIGraphicsGetCurrentContext())
//        let image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();


//    func chart(chart: TKChart!, textForLabelAtPoint dataPoint: TKChartData!, inSeries series: TKChartSeries!, atIndex dataIndex: UInt) -> String! {
//        return dataPoint.dataName!()
//    }
//
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return UIStatusBarStyle.LightContent
//    }
