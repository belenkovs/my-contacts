import React from 'react';
import './app-header.css';
import {Link} from 'react-router-dom';


const AppHeader = ({total}) => {
    return (
        <header className="header">
            <Link to="/" className ="header__link">Главная страница</Link>
            <Link to="/user" className ="header__link">Пользователь</Link>
            <Link to="/contactlist" className ="header__link">Список контактов</Link>
        </header>
    )
};


export default AppHeader;
