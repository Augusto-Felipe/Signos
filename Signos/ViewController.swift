//
//  ViewController.swift
//  Signos
//
//  Created by Felipe Augusto Correia on 30/01/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var signosArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.barTintColor = .orange
        
        signosArray.append("Áries")
        signosArray.append("Touro")
        signosArray.append("Gêmeos")
        signosArray.append("Câncer")
        signosArray.append("Leão")
        signosArray.append("Virgem")
        signosArray.append("Libra")
        signosArray.append("Escorpião")
        signosArray.append("Sagitário")
        signosArray.append("Capricórnio")
        signosArray.append("Aquário")
        signosArray.append("Peixes")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signosArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celulaReuso.textLabel?.text = signosArray[indexPath.row]
        return celulaReuso
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "logo")
//        let headerView = UIView()
//        headerView.backgroundColor = .systemBlue
//        headerView.addSubview(imageView)
//
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
//        imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
//        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        imageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
//
//        return headerView
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedSigno = signosArray[indexPath.row]
        
        switch selectedSigno {
        case "Áries":
            createAlert(message: "Dinâmicos e sinceros, quem tem sol em Áries costuma ter um forte contato com a sua individualidade, que pode parecer egoísmo em alguns momentos. Arianas e arianos tendem a ser alegres e muito extrovertidos, mas também podem ser bastante competitivos e soar um pouco autoritários. Podem preferir trabalhar sozinhos, mas costumam ter um ótimo espírito de liderança.")
        case "Touro":
            createAlert(message: "Calmo e persistente, se você tem sol no signo de Touro, provavelmente não costuma se irritar com facilidade. Em geral, suas posses e bens materiais são importantes para você. E, dependendo do restante do seu Mapa Astral, você pode usar isso ao seu favor, desenvolvendo uma tendência natural para acumular bens materiais, além de um ótimo senso de organização financeira. Mas atenção! Essa mesma característica pode despertar possessividade e materialismos excessivos.")
        case "Gêmeos":
            createAlert(message: "Curioso e bem humorado, quem tem sol no signo de Gêmeos costuma fazer amigos sem grandes dificuldades, tem uma verdadeira vocação para manter um círculo social diverso, com todas as tribos possíveis. Dois em um? Geminianos e geminianas podem ter uma personalidade versátil, que se adapta a diversas formas de pensamento e podem transitar tranquilamente por dois lados de uma questão. Mas atenção! Com imaturidade essa facilidade de mediação pode se transformar em falsidade.")
        case "Câncer":
            createAlert(message: "O signo de Câncer se relaciona com tudo em sua vida desde uma perspectiva emocional. De forma geral, a personalidade do signo de Câncer costuma encarar o dinheiro como uma uma ferramenta de nutrição e proteção em relação às pessoas que ama. A pessoa do signo de Câncer pode ter dificuldades em ser produtiva se estiver com problemas familiares ou de relacionamento. Ou, ainda, diante de uma grande perda emocional.")
        case "Leão":
            createAlert(message: "Vaidade e bom humor podem ser marca registrada na personalidade de quem tem o sol no signo de Leão. Carismáticos e naturalmente destacáveis, leoninas e leoninos típicos tendem a ser bem extrovertidos. Sua generosidade também se destaca em seu modo de amar, a felicidade da outra pessoa na relação também é motivo de sua própria alegria.")
        case "Virgem":
            createAlert(message: "A busca pela perfeição pode ser bem presente na personalidade de quem tem o sol no signo de Virgem. Naturalmente adeptos da praticidade, virginianas e virginianos podem melhorar sua auto-estima se sentindo mais úteis e produtivos. O nível elevado de autocrítica, porém, pode levá-los a subestimar seus próprios talentos com certa facilidade.")
        case "Libra":
            createAlert(message: "A empatia e a diplomacia podem ser bem presentes na personalidade de quem tem o sol no signo Libra. Naturalmente direcionados para as relações com outras pessoas, librianas e librianos podem ter um grande talento para solucionar conflitos, porém, a preocupação em racionalizar os dois lados de uma questão pode gerar situações de dúvida e indecisão.")
        case "Escorpião":
            createAlert(message: "Uma forte intuição é uma das marcas registradas de quem tem Sol no signo Escorpião, geralmente orientados pelas suas emoções, escorpianos e escorpianas conseguem enxergar nas entrelinhas e identificar o que não foi dito. Bastante conectados com seus sentimentos, podem desenvolver comportamentos possessivos e obsessivos.")
        case "Sagitário":
            createAlert(message: "Vaidosos e bem humorados, quem tem sol no signo de Sagitário costuma enxergar com facilidade o lado positivo de cada situação. Cidadãos do mundo, sagitarianas e sagitarianos geralmente são pessoas extrovertidas, espontâneas e comunicativas que não gostam nenhum pouco de solidão. O idealismo sempre presente, também faz do signo de Sagitário o incentivador ideal, capaz de contagiar qualquer equipe sem muitos esforços.")
        case "Capricórnio":
            createAlert(message: "Praticidade e maturidade são típicas características de Capricórnio. Independentes, costumam fazer seu próprio caminho e não confiar muito em rotas traçadas por outras pessoas. Quem tem um acúmulo de planetas em Capricórnio signo pode ter um perfil workaholic, mas a carreira profissional é apenas um dos aspectos que chamam a atenção dos capricornianos.")
        case "Aquário":
            createAlert(message: "A busca por inovação e independência podem ser características fortes em pessoas com o sol no signo de Aquário. Com criatividade sempre em alta, costumam ser bastante inventivas e direcionadas a solução de problemas. Quem tem um acúmulo de planetas no signo de Aquário pode ter um perfil questionador e radical, e em algumas situações pode discordar da maioria pelo simples fato de querer ser sempre diferente.")
        case "Peixes":
            createAlert(message: "A empatia e a humildade podem ser fortes características de Peixes. Sempre conectados com sua intuição, piscianos e piscianas costumam captar as coisas no ar, muitas vezes são pessoas bem discretas e observadoras que conseguem perceber o mundo através da observação de si. Quem tem um acúmulo de planetas no signo de Peixes tende a dar muita importância aos seus sonhos e ao que ainda não é real, mas pode ser.")
        default:
            createAlert(message: "Invalido")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func createAlert(message: String) {
        let alert = UIAlertController(title: "Sobre seu signo", message: message , preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        
        alert.addAction(okButton)
        
        present(alert, animated: true)
    }
    
}


