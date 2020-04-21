'use strict';

import {$} from './modules/nQuery.js';
import {getFileAjax} from './modules/Ajax.js';
import {getAndXSLT} from './modules/Ajax.js';

const getBooks = async function(ev) {
    await getAndXSLT("http://localhost:3000/xml/BooksCanon.xml",
                     "http://localhost:3000/xml/BooksCanon.xsl",
                     "books",
                     "");
};

const getCars = async function(ev) {
    await getAndXSLT("http://localhost:3000/xml/cars.xml",
                     "http://localhost:3000/xml/cartable.xsl",
                     "cars",
                     "");
                
};

const init = function () {
        getBooks();
        getCars();
}

window.addEventListener('load', init);