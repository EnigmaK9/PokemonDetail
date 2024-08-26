import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var pokemonTableView: UITableView!
    
    let dataManager = PokemonDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Data will be fetched from the data manager upon the view's loading.
        dataManager.fetch()
        
        // Set the delegate and data source for the table view.
        pokemonTableView.delegate = self
        pokemonTableView.dataSource = self
    }
}

extension PokemonViewController: UITableViewDelegate, UITableViewDataSource {
    
    // The number of rows in each section of the table view will be returned.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.countPokemons()
    }
    
    // Cells will be populated with Pokémon data from the data manager.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        cell.pokemonLabel.text = pokemon.name
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        return cell
    }
    
    // A custom header view for the table section will be created, featuring a blurred Pokémon image.
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // A container view will be created to hold the header's content.
        let containerView = UIView()
        
        // An image view will be created to display the Pokémon image.
        let imgHeader = UIImageView(image: UIImage(named: "Pokemon"))
        imgHeader.translatesAutoresizingMaskIntoConstraints = false
        imgHeader.contentMode = .scaleAspectFill
        imgHeader.clipsToBounds = true
        
        // A view for the blur effect will be created and applied on top of the image view.
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        
        // The image view and blur view will be added to the container view.
        containerView.addSubview(imgHeader)
        containerView.addSubview(blurView)
        
        // Constraints will be set up to ensure the image and blur views cover the entire header area.
        NSLayoutConstraint.activate([
            imgHeader.topAnchor.constraint(equalTo: containerView.topAnchor),
            imgHeader.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            imgHeader.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            imgHeader.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            // blurView.topAnchor.constraint(equalTo: containerView.topAnchor),
            // blurView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            // blurView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            // blurView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
        ])
        
        return containerView
    }
}
