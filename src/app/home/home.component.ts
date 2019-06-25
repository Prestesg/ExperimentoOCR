import { Component } from '@angular/core';
import { map } from 'rxjs/operators';
import { Breakpoints, BreakpointObserver } from '@angular/cdk/layout';
import  Swal  from 'sweetalert2'; 

import Tesseract from 'tesseract.js';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {
  /** Based on the screen size, switch from standard to one column per row */
  cards = this.breakpointObserver.observe(Breakpoints.Handset).pipe(
    map(({ matches }) => {
      if (matches) {
        return [
          { title: 'Card 1', cols: 1, rows: 1 },
          { title: 'Card 2', cols: 2, rows: 2 },
          { title: 'Card 3', cols: 3, rows: 3 }
        ];
      }

      return [
        { title: 'Card 1', cols: 1, rows: 1 },
        { title: 'Card 2', cols: 1, rows: 1 },
        { title: 'Card 3', cols: 1, rows: 1 }
      ];
    })
  );
  
  async sendFile(){
    const { TesseractWorker } = Tesseract;
    const worker = Tesseract.TesseractWorker({
      workerPath: 'node_modules/tesseractjs/dist/tesseract.min.js',
      langPath: 'https://tessdata.projectnaptha.com/4.0.0',
      corePath: 'node_modules/tesseractjs/dist/tesseract-core.wasm.js',
    });
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
        
      }

      reader.readAsDataURL(file)
    }
  }
  constructor(private breakpointObserver: BreakpointObserver) {}
}

