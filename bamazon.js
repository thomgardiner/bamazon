const mysql = require("mysql");
const inquirer = require("inquirer");

let id = null;

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
});

const getTable = function() {
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      for(i=0; i < res.length; i++){
        console.log("ID: " + res[i].id + " | " + "Product Name: " + res[i].product_name + " | " + "Current Price: " + res[i].price);
    }
      promptID();
    });
};

const checkQuanity = function(id, quanity){
    let query = connection.query(
        "SELECT * FROM products WHERE ?",
        [
            {
              id: id
            }
          ],
          function(err, res) {
            if(quanity < res[0].stock){
                let total = res[0].price * quanity;
                console.log("Your purchase comes to $" + total);
                updateQuanity(id, quanity);
            }
            else{
                console.log("There's not enough!");
                connection.end();
            }
          }
        );
}

const updateQuanity = function(id, amount) {
    let query = connection.query(
      "UPDATE products SET stock = stock - " + amount + " WHERE ?",
      [
        {
          id: id
        }
      ],
      function(err, res) {
        // console.log(res.affectedRows + " stock updated!");
        connection.end();
      }
    );
}

let promptID = function(){
    inquirer.prompt([
        {
          type: "input",
          name: "userInput",
          message: "What is the ID of the item you want to buy?"
        }]).then(function(response){
            id = response.userInput;
            console.log("You said " + id);
            promptQuanity();
      })
}

let promptQuanity = function(){
    inquirer.prompt([
        {
          type: "input",
          name: "userInput",
          message: "How many?"
        }]).then(function(response){
            let quanity = response.userInput;
            console.log("You said " + quanity);
            checkQuanity(id, quanity);
      })
}

getTable();
