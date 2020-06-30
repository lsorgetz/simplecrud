## Sobre SimpleCRUD

SimpleCRUD é uma aplicação simples de CRUD que foi desenvolvida usando [Laravel](https://laravel.com) e [Voyager](https://voyager.devdojo.com)

## Instalação
- Criar um banco de dados em MySQL
- importar o banco de dados exemplo pelo script /projetos/dumpl.sql (consta também o diagrama ER no MysqlWorkbench)
- baixar ou realizar o clone da aplicação
- ajustar o arquivo .env conforme segue:
        APP_URL=http://localhost/simplecrud/public
        DB_CONNECTION=mysql
        DB_HOST=localhost
        DB_PORT=3306
        DB_DATABASE=seu_banco
        DB_USERNAME=seu_usuario
        DB_PASSWORD=sua_senha
- pode ser necessário aplicar permissões para que o Apache (ou seu servidor web) possa escrever.
- ao abrir o ambiente administrativo ele pode querer criar links simbólicos para o perfeito funcionamento (abertura/exibição das imagens).
- abrir o navegador com a url:
        localhost/simplecrud/public/admin 
        ou
        localhost/simplecrud/public/


