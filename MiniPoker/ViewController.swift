//
//  ViewController.swift



import UIKit

class ViewController: UIViewController {
    
  //  var imagenes = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2.png"), #imageLiteral(resourceName: "3.png"), #imageLiteral(resourceName: "5.pn,,,,,g"), #imageLiteral(resourceName: "6.png"), #imageLiteral(resourceName: "7.png"), #imageLiteral(resourceName: "4.png"), #imageLiteral(resourceName: "8.png"), #imageLiteral(resourceName: "9.png"), #imageLiteral(resourceName: "11.png"), #imageLiteral(resourceName: "12.png"), #imageLiteral(resourceName: "13.png"), #imageLiteral(resourceName: "10.png"), #imageLiteral(resourceName: "10.png")]

    var imagenes = [#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "13"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "9")]
    
    @IBOutlet weak var carta2ImageView: UIImageView!
    @IBOutlet weak var carta1ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   // 13 y 7
    

    @IBAction func jugarButton(_ sender: UIButton) {
        

        carta1ImageView.image = imagenes.randomElement()
        carta2ImageView.image = imagenes.randomElement()
       
        if (carta1ImageView.image ==  #imageLiteral(resourceName: "7") && carta2ImageView.image == #imageLiteral(resourceName: "13") || carta1ImageView.image == #imageLiteral(resourceName: "13") && carta2ImageView.image == #imageLiteral(resourceName: "7") ){

         alerta(titulo: "Ajalas", mensaje: "Ya ganaste perro")
        }
        
        else  if (carta1ImageView.image == #imageLiteral(resourceName: "5") && carta2ImageView.image == #imageLiteral(resourceName: "7") || carta1ImageView.image == #imageLiteral(resourceName: "7") && carta2ImageView.image == #imageLiteral(resourceName: "5") ){
            
            alerta(titulo: "Ajalas", mensaje: "Ya ganaste perro")
           }
      
        else  if (carta1ImageView.image == #imageLiteral(resourceName: "5") && carta2ImageView.image == #imageLiteral(resourceName: "5") || carta1ImageView.image == #imageLiteral(resourceName: "5") && carta2ImageView.image == #imageLiteral(resourceName: "5") ){
            
            alerta(titulo: "Ajalas", mensaje: "Ya ganaste perro")
           }
        
        
    }
    
   
    func alerta (titulo: String, mensaje: String){
        let alert = UIAlertController (title: titulo, message: mensaje, preferredStyle: .alert)
        
        let continueaction = UIAlertAction (title: "continue", style: .default, handler: nil)
        alert.addAction(continueaction)
        self.present (alert, animated: true, completion:  nil)
        
        
    }
    
}

