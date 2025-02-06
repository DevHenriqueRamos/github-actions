package main

import (
	"github.com/devhenriqueramos/github-actions/database"
	"github.com/devhenriqueramos/github-actions/routes"
)

func main() {
	database.ConectaComBancoDeDados()
	routes.HandleRequest()
}
