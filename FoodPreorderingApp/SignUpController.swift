import UIKit

class SignUpController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GenderSegBtn.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)
    }
    
    
    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var ContactField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var NewPassField: UITextField!
    @IBOutlet weak var GenderSegBtn: UISegmentedControl!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

}
