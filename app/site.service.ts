import { Injectable } from '@angular/core';

import { Site } from './site';
import { SITES } from './sites.mock';

@Injectable()
export class SiteService {

    getSites(): Promise<Site[]> {
        return Promise.resolve(SITES);
    }
}
