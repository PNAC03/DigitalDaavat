import UIKit

class ProfilePageController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SwitchOutlet.onTintColor = UIColor.init(displayP3Red: 1, green: 0.42, blue: 0.34, alpha: 1)
        NameField.placeholder = "Aditya"
        ContactField.placeholder = "9341221600"
        EmailField.placeholder = "pnacharan@gmail.com"
        PassField.placeholder = "Password"
    }
    
    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var ContactField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var GenderField: UITextField!
    @IBOutlet weak var PassField: UITextField!
    @IBOutlet weak var SwitchOutlet: UISwitch!
    @IBOutlet weak var BackgOutlet: UIImageView!
    @IBOutlet weak var ProfileBtn: UIButton!
    @IBOutlet weak var HomeBtn: UIButton!
    @IBOutlet weak var OrdersBtn: UIButton!
    @IBOutlet weak var lock: UIImageView!
    @IBOutlet weak var lock2: UIImageView!
    @IBOutlet weak var lock3: UIImageView!
    @IBOutlet weak var lock4: UIImageView!
    
    
    @available(iOS 13.0, *)
    @IBAction func SwitchAction(_ sender: Any) {
        if(SwitchOutlet.isOn == true)
        {
            lock.isHidden = true
            NameField.isUserInteractionEnabled = true
            NameField.backgroundColor = UIColor.init(red: 1.0, green: 0.25, blue: 0.33, alpha: 0.12)
            lock2.isHidden = true
            ContactField.isUserInteractionEnabled = true
            ContactField.backgroundColor = UIColor.init(red: 1.0, green: 0.25, blue: 0.33, alpha: 0.12)
            lock3.isHidden = true
            EmailField.isUserInteractionEnabled = true
            EmailField.backgroundColor = UIColor.init(red: 1.0, green: 0.25, blue: 0.33, alpha: 0.12)
            lock4.isHidden = true
            PassField.isUserInteractionEnabled = true
            PassField.backgroundColor = UIColor.init(red: 1.0, green: 0.25, blue: 0.33, alpha: 0.12)
        }
        else {
            lock.isHidden = false
            NameField.isUserInteractionEnabled = false
            NameField.backgroundColor = UIColor.systemGray4
            lock2.isHidden = false
            ContactField.isUserInteractionEnabled = false
            ContactField.backgroundColor = UIColor.systemGray4
            lock3.isHidden = false
            EmailField.isUserInteractionEnabled = false
            EmailField.backgroundColor = UIColor.systemGray4
            lock4.isHidden = false
            PassField.isUserInteractionEnabled = false
            PassField.backgroundColor = UIColor.systemGray4
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
