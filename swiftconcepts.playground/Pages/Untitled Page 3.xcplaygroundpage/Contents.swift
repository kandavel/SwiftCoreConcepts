//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

public class ImageLibDownloader  {
 
    var dictionary : [String : AnyObject] = [:]
    
    static let shared : ImageLibDownloader = ImageLibDownloader()
    
  private  init() {
        //create FileManager class instance
        
    }
   
    
    func checkForFileExists() -> Bool {
        //Here we will check wthether file url is present or not with the help of dectionary
       
        return false
    }
    
  
    func  downloadFile(url : String,type : String) {
        DispatchQueue.main.async {
            URLSession.shared.downloadTask(with: <#T##URLRequest#>) { <#URL?#>, <#URLResponse?#>, <#Error?#> in
                <#code#>
                //if sucess, store it in the document directory, with the help of filemanager
                
            }
        }
    }
    
    func retirveFile() {
        
        
    }
    
    deinit {
        
        //deallocate filemanager instance
        
    }

}
class DiskSpsacemnager {
    
    
    
    
    
    
}
