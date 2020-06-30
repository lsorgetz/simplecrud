## Sobre SimpleCRUD

SimpleCRUD é uma aplicação simples de CRUD que foi desenvolvida usando [Laravel](https://laravel.com) e [Voyager](https://voyager.devdojo.com)

## Instalação
- Criar um banco de dados em MySQL
- importar o banco de dados exemplo pelo script /projetos/dumpl.sql (consta também o diagrama ER no MysqlWorkbench)
- baixar ou realizar o clone da aplicação
- ajustar o arquivo .env conforme segue:
APP_URL=http://localhost/simplecrud/public<br>
DB_CONNECTION=mysql<br>
DB_HOST=localhost<br>
DB_PORT=3306<br>
DB_DATABASE=seu_banco<br>
DB_USERNAME=seu_usuario<br>
DB_PASSWORD=sua_senha<br>
- pode ser necessário aplicar permissões para que o Apache (ou seu servidor web) possa escrever.
- ao abrir o ambiente administrativo ele pode querer criar links simbólicos para o perfeito funcionamento (abertura/exibição das imagens).
- abrir o navegador com a url:
        localhost/simplecrud/public/admin 
        ou
        localhost/simplecrud/public/


