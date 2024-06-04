### **README - Prueba Técnica DevOps**

#### **Descripción del Proyecto**

Este proyecto es una prueba técnica para el puesto de DevOps, que consiste en configurar una integración mínima de CI/CD para desplegar una aplicación "Hola Mundo" en un contenedor. El despliegue se realiza en un clúster de Kubernetes utilizando Jenkins como herramienta de CI/CD y Terraform para la infraestructura en AWS.

#### **Requisitos**

1. **Integración mínima de CI/CD**: Desplegar un contenedor con una aplicación "Hola Mundo".
2. **Kubernetes**: Utilizar cualquier versión de Kubernetes (preferiblemente EKS de AWS).
3. **Infraestructura como Código (IaC)**: Crear la infraestructura utilizando Terraform.
4. **Herramientas de CI/CD**: Utilizar Jenkins con Multibranch Pipeline.
5. **Exposición del Servicio**: Utilizar cualquier método para exponer el servicio (por ejemplo, Nginx).

#### **Estructura del Proyecto**

El repositorio contiene los siguientes archivos y carpetas:

- **Jenkinsfile**: Definición del pipeline de CI/CD.
- **src/**
  - **HelloWorld.java**: Código fuente de la aplicación Java.
- **Dockerfile**: Instrucciones para construir la imagen Docker.
- **k8s/**
  - **deployment.yaml**: Manifiesto de Kubernetes para desplegar la aplicación.
- **terraform/**
- **eks/**: Configuración específica para el clúster de EKS.
- **iam/**: Configuración de roles y políticas IAM.
- **salidas/**: Definiciones de las salidas de los recursos Terraform.
- **proveedor/**: Configuración del proveedor de AWS.
- **seguridad/**: Configuración de grupos de seguridad.
- **terraform/**: Archivos principales de configuración de Terraform.
- **terraform-copia-de-seguridad/**: Copia de seguridad de archivos Terraform.
- **vpc/**: Configuración de la red virtual privada (VPC).

#### **Instrucciones de Configuración y Ejecución**

1. **Configurar el Entorno de AWS**

   - Instalar AWS CLI y configurar las credenciales:
     ```bash
     aws configure
     ```

2. **Configurar Terraform**

   - Inicializar Terraform y aplicar la configuración:
     ```bash
     cd terraform
     terraform init
     terraform apply
     ```

3. **Instalar Jenkins**

   - Instalar Jenkins en una instancia EC2 y configurar los plugins y credenciales necesarias.

4. **Crear y Configurar el Pipeline en Jenkins**

   - Crear un Proyecto Multibranch Pipeline en Jenkins.
   - Configurar el repositorio de GitHub en Jenkins.

5. **Ejecutar el Pipeline**

   - Verificar la correcta ejecución del pipeline en Jenkins.
   - Desplegar la aplicación en el clúster de EKS.


#### **Agradecimientos**

Agradezco la oportunidad de participar en esta prueba técnica y demostrar mis habilidades en DevOps y CI/CD. Espero que consideren mi candidatura para la vacante y quedo a disposición para cualquier pregunta o información adicional.

Atentamente,

Nain Santaella
