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

Instalación:
------------

- Ejecutar
```
make install
```

Configuración del /etc/host:
----------------------------

- Ejecutar:
```
sudo k0s kubectl get ingress -n app
```
- Tomar nota de la IP en la columan ADDRESS
- Agregar la siguiente entrada en el archivo /etc/host de la máquina donde se va a navegar, sustituyendo <IP-ADDRESS> con la IP del paso anterior:
```
<IP-ADDRESS> app.gmaggiw.local grafana.gmaggiw.local prometheus.gmaggiw.local
```

Navegación:
-----------

- Ejecutar:
```
sudo k0s kubectl get service ingress-nginx-controller -n ingress-nginx
```
- Tomar nota del puerto que está entre el "443" y "/TCP" en la columna PORT(S)
- Con este puerto ya se puede navegar a con la urls, sustituyendo `[PORT]` por el puerto del paso anterior:
    - https://app.gmaggiw.local:`[PORT]`
    - https://grafana.gmaggiw.local:`[PORT]`
    - https://prometheus.gmaggiw.local:`[PORT]`
- La clave por defecto para Grafana y Prometheus es:
```
user: admin
password: admin
```