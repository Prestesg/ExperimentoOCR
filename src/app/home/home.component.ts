import { Component } from '@angular/core';
import { map } from 'rxjs/operators';
import { Breakpoints, BreakpointObserver } from '@angular/cdk/layout';
import  Swal  from 'sweetalert2'; 


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent {

  loginForm(){

    
    Swal.mixin({
      title: 'Selecione um arquivo',
      input: 'file',
      confirmButtonText: 'Next &rarr;',
      showCancelButton: true,
      progressSteps: ['1', '2', '3']
    }).queue([
      {
        title: 'Selecione um arquivo'      
      },
      'Question 2',
      'Question 3'
    ]).then((result) => {
      if (result.value) {
        Swal.fire({
          title: 'All done!',
          html:
            'Your answers: <pre><code>' +
              JSON.stringify(result.value) +
            '</code></pre>',
          confirmButtonText: 'Lovely!'
        })
      }
    })
  }
  
  async sendFile(){
    const {value: file} = await Swal.fire({
      title: 'Selecione um arquivo',
      input: 'file',
      inputAttributes: {
        'accept': '*',
        'aria-label': 'Upload your profile picture'
      }
    })

    if (file) {
      const reader = new FileReader
      reader.onload = (e) => {
        Swal.fire({
          title: 'Your uploaded picture',
          imageUrl: e.target.result,
          imageAlt: 'The uploaded picture'
        })
      }
      reader.readAsDataURL(file)
    }
  }
  constructor() {}
}

