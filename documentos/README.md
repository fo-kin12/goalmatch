# 📂 Documentos

Aquí guardo material de apoyo: la presentación de GoalMatch y dos trabajos del curso. Nada de esta carpeta afecta a la app; la demo sigue siendo solo el `index.html` de la raíz.

| Archivo | Qué es |
|---|---|
| [GoalMatch_proposito_y_como_se_hizo.pdf](./GoalMatch_proposito_y_como_se_hizo.pdf) | Presentación de GoalMatch (26 diapositivas) |
| [ordenar_tres_numeros.psc](./ordenar_tres_numeros.psc) | Ejercicio de PSeInt: ordenar tres números |
| [actividad_tres_cupos_borrador.txt](./actividad_tres_cupos_borrador.txt) | Borrador de la actividad "Tres cupos, ocho estudiantes" |

---

## ⚽ GoalMatch: propósito y cómo se hizo

Presentación del proyecto (noviembre de 2026), hecha por **Nicolás Marín, Andrés Gil, Juan Álvarez y Michael López**.

- **El problema:** armar un partido amateur es un caos. Faltan jugadores a última hora, uno paga la cancha y le toca cobrarle a todos por WhatsApp, los equipos quedan disparejos y no queda registro de quién jugó bien. La presentación lo muestra con un "antes" (el típico grupo de WhatsApp) y un "después" con GoalMatch.
- **El propósito:** que organizar, jugar y recordar un partido sea tan fácil como unirse a un cupo. La app gira en torno a tres cosas: **encontrar** partidos, canchas y arqueros cerca; **jugar mejor** con equipos parejos, pizarra táctica y marcador en vivo; y **ser reconocido** con una carta de jugador que sube con cada buen partido.
- **La idea central:** se juega, todos votan al MVP, la media de cada jugador sube con las notas de sus compañeros y el mejor de cada equipo llega como **figura** al siguiente partido, con una carta animada y una presentación tipo VS.
- **El recorrido de un jugador:** encuentra un partido → paga su cupo con Nequi → juega con marcador en vivo → vota al MVP → llega como figura.
- **Qué hace:** más de 30 funciones repartidas en jugar (crear partidos, lista de espera, modo árbitro, equipos balanceados), reservar y pagar (canchas con mapa, arqueros, pago con Nequi simulado, "vaca" de la cancha, check-in con QR), comunidad (clubes, copas, ligas, ranking, galería de goles) y progreso (ficha con media OVR, insignias, equipo de la semana). También tiene modo claro y panel para el dueño de la cancha.
- **Ciudades:** Bogotá y Medellín, con 14 zonas en total. Las zonas y el mapa son reales; las canchas, precios y clubes son de ejemplo.
- **El mercado:** el 34 % de los colombianos encuestados practica fútbol y hay unas 4.000 canchas sintéticas en el país, más de 300 en Bogotá y más de 200 en Medellín (fuentes: Kantar IBOPE Media 2024, Portafolio, Agronegocios y Alcaldía de Bogotá / IDRD).
- **Modelo de negocio (propuesta):** comisión por cada cupo pagado en la app, plan mensual para las canchas (reservas, horarios y pagos) y torneos con marcas patrocinadoras. Los valores todavía son supuestos por validar.
- **Frente a las alternativas:** comparada con un grupo de WhatsApp y con una app de reservas típica, GoalMatch es la única que junta cupos con lista de espera, reserva con mapa, pago dividido, equipos balanceados, estadísticas con MVP y comunidad.
- **Cómo se hizo:** con un prompt de diseño de 12 partes (marca, pantallas, tarjetas tipo FIFA, MVP, torneos…), **Stitch** generó 15 pantallas web y móvil; con **Claude** se convirtieron en una sola app que se adapta a computador y celular, con la figura animada, datos en vivo y el resto de funciones por etapas; y se publicó en **GitHub Pages**. Cada versión se probó en computador y celular. Las ideas, decisiones y pruebas fueron del equipo.
- **Por dentro:** una sola página en el navegador conectada a una base de datos en vivo (chat, votos, notas, fichas y marcador), al almacenamiento de fotos y videos, a un asistente táctico y a los pagos con Nequi (simulados).
- **Tecnologías:** HTML, CSS y JavaScript; SVG y animaciones CSS; Canvas 2D para la carta de 1080×1920; Web Audio para el sonido; base de datos en tiempo real; qrcodejs para el check-in; y pruebas con Playwright.
- **En números:** 15 pantallas diseñadas, 19 vistas, más de 30 funciones, 2 ciudades y un solo archivo de unos 280 KB.
- **Próximos pasos:** canchas reales, jugadores reales en los equipos, pagos reales con Nequi, notificaciones y volverla instalable con dominio propio.
- **Demo:** se prueba escaneando el código QR, sin crear cuenta, en [fo-kin12.github.io/goalmatch](https://fo-kin12.github.io/goalmatch/).

> 📝 Por completar en la presentación: la diapositiva del **equipo** (nombres, roles y aportes), los **comentarios de quienes la probaron** y los **valores del modelo de negocio** (porcentaje de comisión y precio del plan).

---

## 🔢 Ordenar tres números (PSeInt)

Pide tres números enteros y dice cuál es el **mayor**, el **intermedio** y el **menor**. Primero busca el mayor comparándolo con los otros dos (`a > b Y a > c`) y, dentro de ese caso, compara los dos que quedan para saber cuál es el intermedio. Hace lo mismo para cada uno de los tres números.

> ⚠️ **Pendiente:** si hay números repetidos (por ejemplo `5, 5, 2`) el programa no muestra nada, porque usa `>` y ninguno queda como mayor estricto. Se arreglaría usando `>=` o agregando un caso para los empates.

---

## 🎓 Actividad: tres cupos, ocho estudiantes (borrador)

Actividad de equipo sobre cómo usar una IA para tomar una decisión: hay **ocho estudiantes** de un curso de programación (notas de 0 a 5, se aprueba con 3) y solo **tres cupos** en un programa de acompañamiento. Cada estudiante tiene una situación distinta: bloqueo con los conceptos, turnos de trabajo, cuidado de un familiar, falta de computador, inseguridad al trabajar solo, etc.

Lo que se hizo:

1. **Primera consulta (sin detalles del programa):** la IA eligió a **Ana**, **Diego** y **Camila**, priorizando a quien se esfuerza pero está estancado, al de mayor riesgo de abandonar y a quien depende de otros para programar.
2. **Observaciones:** se probó otro enfoque, el de equidad y barreras externas, que elegía a **Bruno**, **Gabriela** y **Diego**. También quedaron preguntas por resolver, como si el acompañamiento tiene horario fijo, o si Hugo no sabe explicar su código por copiar o por otra razón (ansiedad, forma de expresarse).
3. **Segunda consulta (con el "Programa B"):** al explicar que el programa busca evitar el abandono, tiene horarios flexibles, 6 horas extra de computador por semana y que el repaso del examen es abierto para todos, la IA eligió a **Gabriela**, **Diego** y **Ana**.
4. **Comparación:** entró Gabriela en lugar de Camila porque el programa resuelve justo su problema (no tener computador). Diego y Ana se mantuvieron en todos los escenarios, y Felipe, Elena y Hugo siempre quedaron fuera.

**Conclusión:** cuando a la IA solo se le pide "elegir al que más lo necesita", usa criterios genéricos. Al darle el objetivo, los recursos y las reglas reales del programa, la decisión se vuelve mucho más acertada.

> 📝 Es un borrador: todavía falta completar la **elección individual** y su criterio.

---

Hecho por [fo-kin12](https://github.com/fo-kin12)
