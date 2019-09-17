//
//  ViewController.swift
//  TableView
//
//  Created by Alumno on 9/13/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno (nombre:"Gabriel", apellido:"Miranda",   matricula:"G01110"))
        alumnos.append(Alumno (nombre:"Marco",   apellido:"Rodriguez", matricula:"G01111"))
        alumnos.append(Alumno (nombre:"Ana",     apellido:"Cota",      matricula:"G01101"))
        alumnos.append(Alumno (nombre:"Javier",  apellido:"Lopez",     matricula:"G01011"))
        
    
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    //Contenido de cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblApellido.text = alumnos[indexPath.row].apellido
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        celda?.lblCorreo.text = alumnos[indexPath.row].correo
        
        return celda!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(alumnos[indexPath.row].correo != nil){
            return 120
        }
        
    }
    
}
    
}

