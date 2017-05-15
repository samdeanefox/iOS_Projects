//
//  TableViewController.swift
//  Lab 2
//
//  Created by samfo on 5/10/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var hr_leaders: [(name: String, number: Int, photo: UIImage, bio: String)] = [
            (name:"Barry Bonds", number: 762, photo: #imageLiteral(resourceName: "!1barry_bonds.jpg"), bio: "Barry Lamar Bonds (born July 24, 1964) is an American former professional baseball left fielder who played 22 seasons in Major League Baseball (MLB) with the Pittsburgh Pirates and San Francisco Giants.[1] Bonds received seven NL MVP awards and 14 All-Star selections, and is considered to be one of the greatest baseball players of all time."),
            (name:"Hank Aaron", number: 755, photo: #imageLiteral(resourceName: "!2hank_aaron.jpg"), bio: "Henry Louis \"Hank\" Aaron (born February 5, 1934), nicknamed \"Hammerin' Hank\", is a retired American Major League Baseball (MLB) right fielder who is currently the senior vice president of the Atlanta Braves. He played 21 seasons for the Milwaukee/Atlanta Braves in the National League (NL) and 2 seasons for the Milwaukee Brewers in the American League."),
            (name:"Babe Ruth", number: 714, photo: #imageLiteral(resourceName: "!3Babe Ruth.jpg"), bio: "George Herman \"Babe\" Ruth Jr. (February 6, 1895 – August 16, 1948) was an American professional baseball player whose career in Major League Baseball (MLB) spanned 22 seasons, from 1914 through 1935. Nicknamed \"The Bambino\" and \"The Sultan of Swat\", he achieved his greatest fame as a slugging outfielder for the Yankees."),
            (name:"Alex Rodriguez", number: 696, photo: #imageLiteral(resourceName: "!4Alex Rodriguez.jpg"), bio: "Alexander Emmanuel \"A-Rod\" Rodriguez (born July 27, 1975) is a Dominican-American former professional baseball shortstop and third baseman. He played 22 seasons in Major League Baseball (MLB) for the Seattle Mariners, Texas Rangers, and New York Yankees. Rodriguez was one of the sport's most highly touted prospects."),
            (name:"Willie Mays", number: 660, photo: #imageLiteral(resourceName: "!5Willie Mays.jpg"), bio: "Willie Howard Mays, Jr. (born May 6, 1931), nicknamed \"The Say Hey Kid\", is an American former Major League Baseball (MLB) center fielder who spent almost all of his 22-season career playing for the New York and San Francisco Giants, before finishing with the New York Mets. He was elected to the Baseball Hall of Fame in 1979."),
            (name:"Ken Griffey Jr.", number: 630, photo: #imageLiteral(resourceName: "!6Ken Griffey.jpg"), bio: "Ken Griffey Jr. (born November 21, 1969) nicknamed \"Junior\" and \"The Kid\", is an American former professional baseball outfielder who played 22 years in Major League Baseball (MLB). He spent most of his career with the Seattle Mariners and Cincinnati Reds, along with a short stint with the Chicago White Sox. Griffey is one of the most prolific home run hitters in baseball history."),
            (name:"Jim Thome", number: 612, photo: #imageLiteral(resourceName: "!7Jim Thome.jpg"), bio: "James Howard \"Jim\" Thome (born August 27, 1970) is a former American baseball player who played 22 seasons in Major League Baseball (MLB), from 1991 to 2012. He played for six different teams, most notably the Cleveland Indians during the 1990s and the Philadelphia Phillies in the early 2000s."),
            (name:"Sammy Sosa", number: 609, photo: #imageLiteral(resourceName: "!8Sammy Sosa.jpg"), bio: "Samuel Kelvin Peralta Sosa (born November 12, 1968) is a Dominican former professional baseball right fielder. Sosa played with four Major League Baseball teams over his career, most notably the Chicago Cubs. Sosa's Major League career began with the Texas Rangers in 1989."),
            (name:"Albert Pujols", number: 596, photo: #imageLiteral(resourceName: "!9Albert Pujols.jpg"), bio: "José Alberto Pujols Alcántara (born January 16, 1980), better known as Albert Pujols (Spanish pronunciation: [ˈalβert puˈxols]), is a Dominican American professional baseball first baseman for the Los Angeles Angels of Anaheim of Major League Baseball (MLB). He stands 6 feet 3 inches (1.91 m) tall and weighs 240 pounds (110 kg)."),
            (name:"Frank Robinson", number: 586, photo: #imageLiteral(resourceName: "10Frank Robinson.jpg"), bio: "Frank Robinson (born August 31, 1935) is an American former Major League Baseball (MLB) outfielder and manager. He played for five teams from 1956 to 1976, and became the only player to win league MVP honors in both the National and American Leagues.[1] He won the Triple Crown, and was a member of two teams that won the World Series (the 1966 and 1970 Baltimore Orioles)."),
            (name:"Mark McGuire", number: 583, photo: #imageLiteral(resourceName: "11Mark McGuire.jpg"), bio: "Mark David McGwire (born October 1, 1963), nicknamed Big Mac, is an American former professional baseball player and currently a bench coach[1] in Major League Baseball (MLB). As a first baseman, his MLB career spanned from 1986 to 2001 while playing for the Oakland Athletics and the St. Louis Cardinals."),
            (name:"Harmon Killebrew", number: 573, photo: #imageLiteral(resourceName: "12Harmon Killebrew.jpg"), bio: "Harmon Clayton Killebrew (June 29, 1936 – May 17, 2011), nicknamed \"The Killer\", was an American professional baseball first baseman, third baseman, and left fielder. During his 22-year career in Major League Baseball (MLB), primarily with the Minnesota Twins, Killebrew was a prolific power hitter who, at the time of his retirement, was second in American League home runs."),
            (name:"Rafael Palmeiro", number: 569, photo: #imageLiteral(resourceName: "13Rafael Palmeiro.jpg"), bio: "Rafael Palmeiro Corrales (born September 24, 1964) is a retired Cuban American Major League Baseball first baseman and left fielder. Palmeiro was drafted by the Chicago Cubs in 1985. He played for the Cubs, Texas Rangers, and the Baltimore Orioles. He was named to the MLB All-Star Team four times, and won the Gold Glove three times."),
            (name:"Reggie Jackson", number: 563, photo: #imageLiteral(resourceName: "14Reggie Jackson.jpg"), bio: "Reginald Martinez \"Reggie\" Jackson (born May 18, 1946) is an American former professional baseball right fielder who played 21 seasons for the Kansas City / Oakland Athletics, Baltimore Orioles, New York Yankees, and California Angels of Major League Baseball (MLB). Jackson was inducted into the National Baseball Hall of Fame in 1993."),
            (name:"Manny Ramirez", number: 555, photo: #imageLiteral(resourceName: "15Manny Ramirez.jpg"), bio: "Manny Ramírez Onelcida (born May 30, 1972) is a Dominican-American professional baseball outfielder. He played in Major League Baseball (MLB) for parts of 19 seasons. He played with the Cleveland Indians, Boston Red Sox, Los Angeles Dodgers, Chicago White Sox, and Tampa Bay Rays before playing one season in the Chinese Professional Baseball League."),
            (name:"Mike Schmidt", number: 548, photo: #imageLiteral(resourceName: "16Mike Schmidt.jpg"), bio: "Michael Jack Schmidt (born September 27, 1949) is an American former professional baseball third baseman who played 18 seasons in Major League Baseball (MLB) for the Philadelphia Phillies. Schmidt was a twelve-time All-Star and a three-time winner of the National League (NL) Most Valuable Player award (MVP), and he was known for having power and strong defense."),
            (name:"David Ortiz", number: 541, photo: #imageLiteral(resourceName: "17David Ortiz.jpg"), bio: "David Américo Ortiz Arias (born November 18, 1975), nicknamed \"Big Papi\", is a Dominican American retired professional baseball designated hitter and occasional first baseman who played 20 MLB seasons, primarily with the Boston Red Sox. During his 14 seasons with the Red Sox, he was a ten-time All-Star, a three-time World Series champion, and seven-time Silver Slugger winner."),
            (name:"Mickey Mantle", number: 536, photo: #imageLiteral(resourceName: "18Mickey Mantle.jpg"), bio: "Mickey Charles Mantle (October 20, 1931 – August 13, 1995), nicknamed The Commerce Comet and The Mick,[1] was an American professional baseball player. Mantle played his entire Major League Baseball (MLB) career with the New York Yankees as a center fielder and first baseman, from 1951 through 1968."),
            (name:"Jimmie Foxx", number: 534, photo: #imageLiteral(resourceName: "19Jimmie Foxx.jpg"), bio: "Jimmie Foxx (October 22, 1907 – July 21, 1967), nicknamed \"The Beast\", was an American baseball first baseman who played 20 seasons in Major League Baseball for the Philadelphia Athletics, Boston Red Sox, Chicago Cubs, and Philadelphia Phillies.[1] He hit 30 or more home runs in 12 consecutive seasons."),
            (name:"Willie McCovey", number: 521, photo: #imageLiteral(resourceName: "20Willie McCovey.jpg"), bio: "Willie Lee McCovey (born January 10, 1938), nicknamed \"Mac\" and \"Stretch\", is a former Major League Baseball first baseman. He played nineteen seasons for the San Francisco Giants, and three more for the San Diego Padres and Oakland Athletics, between 1959 and 1980. He was inducted into the Baseball Hall of Fame in 1986.")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hr_leaders.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PlayerCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        let i = indexPath.row
        // Configure the cell...
        cell.playerLabel.text = hr_leaders[i].name + " (" + String(hr_leaders[i].number) + ")"
        cell.playerImage.image = hr_leaders[i].photo
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlayerInfo" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let i = indexPath.row
                let vc = segue.destination as! PlayerViewController
                vc.picture = hr_leaders[i].photo
                vc.name = hr_leaders[i].name
                vc.homeruns = String(hr_leaders[i].number) + " Home Runs"
                vc.bio = hr_leaders[i].bio
            }
        }
    }
}
