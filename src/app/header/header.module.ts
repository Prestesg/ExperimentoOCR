import { LoginFormComponent } from './../login-form/login-form.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatFormFieldModule, MatInputModule } from '@angular/material';

@NgModule({
  declarations: [LoginFormComponent],
  imports: [
    CommonModule,
    MatInputModule,
    BrowserAnimationsModule,
    MatFormFieldModule,
    FormsModule,
  ],
  exports:[MatFormFieldModule,MatInputModule],
  providers:[
   
  ]
})
export class HeaderModule { }
