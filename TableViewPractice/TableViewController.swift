import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var shapeTableView: UITableView!
    
    var shapeList = [Shape]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initList()
    }
    
    func initList() {
        let circle = Shape(id: "0",name: "Circle 1",imageName: "circle")
        shapeList.append(circle)
        
        let square = Shape(id: "1",name: "Square 1",imageName: "square")
        shapeList.append(square)
        
        let octagon = Shape(id: "2",name: "Octagon 1",imageName: "octagon")
        shapeList.append(octagon)
        
        let rectangle = Shape(id: "3",name: "Rectangle 1",imageName: "rectangle")
        shapeList.append(rectangle)
        
        let triangle = Shape(id: "4",name: "Triangle 1",imageName: "triangle")
        shapeList.append(triangle)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shapeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as! TableViewCell
        
        let thisShape = shapeList[indexPath.row]
        
        tableViewCell.shapeName.text = thisShape.id + " - " + thisShape.name
        tableViewCell.shapeImage.image = UIImage(named: thisShape.name)
        
        return tableViewCell
    }
}

