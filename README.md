# k0sdeployment

Prerrequisitos:
---------------

- Sistema Operativo: Ubuntu 22.04.2 LTS
- El usuario debe poder ejecutar sudo sin contraseña. 

    > Para configurarlo se ejecutan este comando:
    ```
    sudo visudo
    ```
    > Y se agrega la siguiente línea al final del archivo, reemplazando <tu-usuario> con tu nombre de usuario:
    ```
    <tu-usuario> ALL=(ALL) NOPASSWD: ALL
    ```
- Instalar make:

    ```
    sudo apt-get install make -y
    ```
