import { Http, RequestOptions ,Headers} from '@angular/http';
import { Imagem } from './Imagem';
import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

import {ConfigService} from './config.service';
 
@Injectable()
export class ImagemService {
    private headers:Headers;
    private options:RequestOptions;

    constructor(private http: HttpClient) { 

 
        /*ADICIONANDO O JSON NO HEADER */
        this.headers = new Headers({ 'Content-Type': 'application/json;charset=UTF-8' });                
        this.options = new RequestOptions({ headers: this.headers });
    }
 
    getAll(): Observable<any> {
        return this.http.get('http://localhost:7888/imagens');
    }
 /** 
    /**ADICIONA UMA NOVA Imagen 
    addImagem(Imagem: Imagem){
 
        return this.http.post(this.baseUrlService, JSON.stringify(Imagem),this.options)
        .map(res => res.json());
    }
    /**EXCLUI UMA Imagen 
    excluirImagen(codigo:number){
        return this.http.delete(this.baseUrlService + codigo).map(res => res.json());
    }
 
    /**CONSULTA UMA Imagen PELO CÓDIGO 
    getImagen(codigo:number){
 
        return this.http.get(this.baseUrlService + codigo).map(res => res.json());
    }
 
    /**ATUALIZA INFORMAÇÕES DA Imagen 
    atualizarImagen(Imagem:Imagem){
        return this.http.put(this.baseUrlService, JSON.stringify(Imagem),this.options)
        .map(res => res.json());
    }
 */
}