#coding: utf-8

import csv
import requests
from bs4 import BeautifulSoup

#url = "http://www.kijiji.ca/v-2-bedroom-apartments-condos/ville-de-montreal/4-1-2-chaufee-avec-stationnement/1242550353?null"
url = "http://www.suretenucleaire.gc.ca/fra/transparency/contracts.cfm?listing_id=59"

entetes = {
    "User-Agent":"Samuel Lamoureux - Requête journalistique",
    "From":"sam.lamoureux@hotmail.com"
}

contenu = requests.get(url, headers=entetes)

page = BeautifulSoup(contenu.text, "html.parser")

#print(page.find_all("href"))





for ligne in page.find_all("tr"):
    try:
        print(ligne.a["href"])
    except:
        print("rien")
