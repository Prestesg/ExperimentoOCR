import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { BodyComponent } from './body/body.component';
import { FooterComponent } from './footer/footer.component';
import { UserInfoComponent } from './user-info/user-info.component';
import { ImageCardComponent } from './image-card/image-card.component';
import { ListCardComponent } from './list-card/list-card.component';
import { EvaluationPostComponent } from './evaluation-post/evaluation-post.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {MatButtonModule, MatCheckboxModule, MatGridListModule, MatCardModule, MatIconModule} from '@angular/material';
import {MatMenuModule} from '@angular/material/menu';
import { HomeComponent } from './home/home.component';
import {MatSelectModule} from '@angular/material/select';
import {MatSliderModule} from '@angular/material/slider';
import { MatFormFieldModule, MatInputModule } from '@angular/material';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material/dialog';
import {MatDialogModule} from '@angular/material/dialog';
import { LayoutModule } from '@angular/cdk/layout';
import swal from 'sweetalert2'; 
import Tesseract from 'tesseract.js';
import { LoginFormComponent } from './login-form/login-form.component';

const routes: Routes = [
  {path: '', redirectTo: 'home', pathMatch: 'full'},
  {path: 'home', component:HomeComponent }
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    BodyComponent,
    FooterComponent,
    UserInfoComponent,
    ImageCardComponent,
    ListCardComponent,
    EvaluationPostComponent,
    HomeComponent,
    LoginFormComponent   
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    BrowserAnimationsModule,
    MatButtonModule,
    MatCheckboxModule,
    MatMenuModule,
    MatGridListModule,
    MatCardModule,
    MatIconModule,
    LayoutModule,
    RouterModule,
    MatInputModule,
    MatFormFieldModule,
    MatSelectModule,
    MatDialogModule,
    MatDialog,
    MatDialogRef
  ],
  exports: [RouterModule,EvaluationPostComponent],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { 
  
}


