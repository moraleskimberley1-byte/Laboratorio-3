# Lab 3: Interfaces con Periféricos
## Comunicación UART y Memorias FIFO

---

## Equipo de Trabajo

**Integrantes:**
- Kimberley Morales
- Gonzalo Alpízar
- Steven Fonseca
- Diego Reyes
- Gabriel Alfaro

**Curso:** EL 3313 - Taller de Diseño Digital  
**Semestre:** II-2025  
**Tecnológico de Costa Rica**

---

Este proyecto consiste en el diseño e implementación de un **sistema de comunicación serial** que permitirá a una FPGA intercambiar datos con una computadora externa mediante el protocolo **UART**.

El sistema incluye:
- Memorias **FIFO** para almacenamiento temporal de datos
- Periférico **UART** para comunicación bidireccional
- Interfaz completa con registro de control y gestión de datos

---

## Componentes del Proyecto

### **Parte 1: Memorias FIFO**
Implementación de buffers circulares para gestión de datos:
- FIFO de 512 palabras × 8 bits
- FIFO de prueba de 16 palabras × 8 bits
- Sistema de visualización con LEDs

### **Parte 2: Periférico UART**
Desarrollo del controlador de comunicación serial:
- Velocidad: **115,200 baudios**
- Buses de **32 bits** para entrada/salida
- Registro de control inteligente
- FIFOs integradas TX/RX

---
