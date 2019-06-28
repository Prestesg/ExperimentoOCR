import { UserCardService } from './user-card.service';
import { User } from './../classes/User';
import { Component, OnInit } from '@angular/core';
import {MatCardModule} from '@angular/material/card';


@Component({
  selector: 'app-evaluation-post',
  templateUrl:'evaluation-post.component.html',
  styleUrls: ['./evaluation-post.component.css']
})

export class EvaluationPostComponent implements OnInit {

  users:Array<User>;
  user:User;

  constructor(public userCardService : UserCardService) {
    
    this.users = new Array();

    this.user = new User;
    this.user.name  = 'Prestes';
    this.user.email = 'gabiprestess@hotmail.com';
    this.user.id    = 1;
    this.user.image = 'texto1.jpg'; 
    this.users.push (this.user);

    this.user = new User;
    this.user.name  = 'Teste';
    this.user.email = 'teste@teste.com';
    this.user.id    = 2;
    this.user.image = 'image1.jpg'; 
    this.users.push (this.user);

    this.user = new User;
    this.user.name  = 'Teste 2 ';
    this.user.email = 'teste2@teste2.com';
    this.user.id    = 3;
    this.user.image = 'lupa.png'; 
    this.users.push (this.user);

    console.log(this.users);

    //this.users = this.userCardService.getUsers();
  }

  getUsers(){
      return [];
  }


  ngOnInit() {
  }

}
