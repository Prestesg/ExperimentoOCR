import { User } from '../classes/User';
import { Component, OnInit } from '@angular/core';
import {MatCardModule} from '@angular/material/card';
import { Imagem } from '../services/Imagem';
import { UsuariosService } from '../services/usuarios.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-evaluation-post',
  templateUrl:'evaluation-post.component.html',
  styleUrls: ['./evaluation-post.component.css']
})

export class EvaluationPostComponent implements OnInit {

  users:Array<User>;
  user:User;

  constructor(private usuariosService: UsuariosService,private router: Router) {}

  getUsers(){
      return [];
  }


  ngOnInit() {
    /*CHAMA O SERVIÇO E RETORNA TODAS AS PESSOAS CADASTRADAS */
    this.usuariosService.getAll().subscribe(res =>this.users = res);
  }

}
