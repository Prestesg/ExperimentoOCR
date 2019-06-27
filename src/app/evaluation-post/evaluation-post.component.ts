import { UserCardService } from './user-card.service';
import { User } from './../classes/User';
import { Component, OnInit } from '@angular/core';


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
    //this.users.push (1);

    //this.users = this.userCardService.getUsers();

  }

  getUsers(){
      return [];
  }


  ngOnInit() {
  }

}
