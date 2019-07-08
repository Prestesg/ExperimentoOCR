export class ConfigService {
 
    private urlService:string;
 
    constructor(){
 
        this.urlService = 'http://127.0.0.1:7888';
    }
 
    getUrlService(): string {
 
        return this.urlService;
    }
 
}