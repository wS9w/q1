
import SwiftUI

class ActivityViewCustomActivity: UIActivity{
    var customActivityTipe: UIActivity.ActivityType
    var activityName: String
    var customactivityImage: String
    var customActionWhenTapped: () -> Void

    init(name:String , image:String , performAction: @escaping () -> Void){
        self.customactivityImage = image
        self.activityName = name
        self.customActivityTipe = UIActivity.ActivityType(rawValue: "Action \(name)")
        self.customActionWhenTapped = performAction
        super.init()
    }

    override var activityType: UIActivity.ActivityType?{
        return customActivityTipe
    }

    override var activityTitle: String?{
        return activityName
    }

    override class var activityCategory: UIActivity.Category{
        return .share
    }
    override var activityImage: UIImage?{
        return UIImage(named: customactivityImage)
    }

    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return true
    }
    override func prepare(withActivityItems activityItems: [Any]) {

    }
    override func perform() {
    }
}
struct ActivityView: UIViewControllerRepresentable{

    typealias UIViewControllerType = UIActivityViewController

    public var activityItems: [Any]
    public var applicationsActivities: [UIActivity]?

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let vc = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationsActivities)
        return vc
    }
    //dplink
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
    }



}
