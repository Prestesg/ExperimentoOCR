import { Component, OnInit } from '@angular/core';
import { User } from '../classes/user';
import {MatMenuModule} from '@angular/material/menu';
import  Swal  from 'sweetalert2'; 
import {MatInputModule} from '@angular/material/input';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatSelectModule} from '@angular/material/select';
import { FormsModule } from '@angular/forms';
import { LoginFormComponent } from './../login-form/login-form.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {ViewChild, ElementRef} from '@angular/core';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})


export class HeaderComponent implements OnInit {
  
  @ViewChild('loginBtn') loginBtn: ElementRef;

  constructor() { }

  ngOnInit() {
  }
  // call this wherever you want to close modal
  private loginForm(): void {

  }

}

