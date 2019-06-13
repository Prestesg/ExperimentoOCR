import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';


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
import { LayoutModule } from '@angular/cdk/layout';

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
    HomeComponent
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
    LayoutModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
