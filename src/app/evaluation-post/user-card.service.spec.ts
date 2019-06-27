import { TestBed } from '@angular/core/testing';

import { UserCardService } from './user-card.service';

describe('UserCardService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: UserCardService = TestBed.get(UserCardService);
    expect(service).toBeTruthy();
  });
});
