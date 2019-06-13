import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EvaluationPostComponent } from './evaluation-post.component';

describe('EvaluationPostComponent', () => {
  let component: EvaluationPostComponent;
  let fixture: ComponentFixture<EvaluationPostComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EvaluationPostComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EvaluationPostComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
