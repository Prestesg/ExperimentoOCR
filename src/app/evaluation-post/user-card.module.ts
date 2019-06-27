import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UserCardService } from './user-card.service';
import { EvaluationPostComponent } from './evaluation-post.component';

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    EvaluationPostComponent
  ],
  exports: [EvaluationPostComponent],
  providers : [UserCardService]  
})

export class UserCardModule { }
