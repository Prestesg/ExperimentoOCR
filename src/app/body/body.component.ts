import { Component, OnInit } from '@angular/core';
import { User } from '../classes/user';

@Component({
  selector: 'app-body',
  template: `
  `,
  styleUrls: ['./body.component.css']
})
export class BodyComponent implements OnInit {

  user_list = [];

  constructor() { }

  ngOnInit() {
  }

}
