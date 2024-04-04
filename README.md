En este repositorio vas a encontrar una forma sencilla de como crear un crud en Ruby con Rails (RoR).

El primer paso es clonar el repositorio.
- Clonas el repositorio con:

      git clone https://github.com/jfelipeq14/ruby-crud-bootstrap.git

Luego de haber clonado el repositorio lo primero que debes hacer para empezar a trabajar es tener las dependencias al dia, entonces, debes usar

    bundle install

Y con esto ya tienes las gemas del archivo `Gemfile` disponibles para usarlas en el proyecto.

Puedes iniciar el proyecto con Rails utilizando los siguientes comandos:

- Primero la migracion (crear la base de datos con la informacion preestablecida):

      rails db:migrate

- Luego lanzar el servidor local:

      rails server

Lo que hace el comando es correr el servidor local donde vas a poder encontrar la informacion del CRUD, entonces debes revisar que puerto usa (`3000`) para poder abrir el localhost en un navegador web: ```localhost:3000```
    
Para continuar con el esqueleto de otra entidad (tabla) puedes utilizar un comando que te ayudar a crear toda la estructura: `rails generate scaffold nombreTabla nombreCampoTabla:TipoDeDato`

Un ejemplo de lo anterior basandonos en "instructor" seria:

    rails g scaffold instructor documento:string nombres:string apellidos:string ficha_a_cargo:integer estado:boolean

Y con este comando vamos a crear una tabla que se llama instructor con los campos `documento, nombres, apellidos, ficha_a_cargo y estado` despues de tener un nuevo esqueleto necesitas realizar la migración `rails db:migrate` para tener la base de datos lista y la funcionalidad de la aplicación.

No esta de más recordar que la base de datos por defecto del proyecto esta en `sqlite3` y puedes realizar la instalacion de su funcionalidad:

    sudo apt install sqlite3
