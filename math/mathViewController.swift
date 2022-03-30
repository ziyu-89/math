import UIKit

class mathViewController: UIViewController {

    //組合
    @IBOutlet weak var combination_nTextField: UITextField!
    @IBOutlet weak var combination_kTextField: UITextField!
    @IBOutlet weak var combinationLabel: UILabel!
    
    //排列
    @IBOutlet weak var permutation_nTextField: UITextField!
    @IBOutlet weak var permutation_kTextField: UITextField!
    @IBOutlet weak var permutationLabel: UILabel!
    
    //階乘
    @IBOutlet weak var factorial_n: UITextField!
    @IBOutlet weak var factorialLabel: UILabel!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //組合計算bt
    @IBAction func combination_bt(_ sender: Any) {
        let n = Int(combination_nTextField.text!)
        let k = Int(combination_kTextField.text!)
        let answer = combination(n!,k!)
        combinationLabel.text = String(answer)
    }
    
    //排列計算bt
    @IBAction func permutation_bt(_ sender: Any) {
        let n = Int(permutation_nTextField.text!)
        let k = Int(permutation_kTextField.text!)
        let answer = permutation(n!,k!)
        permutationLabel.text = String(answer)
        
    }
    
    //階乘計算bt
    @IBAction func factorial_bt(_ sender: Any) {
        let n = Int(factorial_n.text!)
        let answer = factorial(n!)
        factorialLabel.text = String(answer)
    }
    
    // 階乘計算
    func factorial(_ n: Int) -> Int {
        var n = n
        var sum = 1
        while n > 1 {
            sum *= n
            n -= 1}
        return sum
    }
    
    //排列計算
    func permutation(_ n: Int, _ k: Int) -> Int{
        return factorial(n) / factorial(n-k)
    }
    //組合計算
    func combination(_ n: Int, _ k: Int) -> Int{
        return permutation(n,k) / factorial(k)
    }
    
}
