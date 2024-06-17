# practica-algoritmos
## Contexto: "Cerralex SRL" Todo en aberturas

Una comercializadora tiene distintos tipos de aberturas (puertas, ventanas, etc), poseen accesorios, y se caracterizan por costo, resistencia a la corrosión, ahorro energético y eficacia mecánica, entre otros, aunque este modelo no considerará todos estos aspectos por el momento.


## Modelo inicial

## 0- La Comercializadora

Sabemos que maneja una lista de clientes y ofrece distintas aberturas.

> Este es un sistema acotado por fines pedagógicos y no representa
la totalidad de los casos ni la complejidad que tendría un sistema real.

## 1- Aberturas

Las aberturas poseen una denominación, ej. "Full Window 150"

**Tipos de aberturas**

Inicialmente trabajaremos con puertas, portones, ventanas rectangulares y una novedosa ventana redonda.

Se considera agregar nuevos tipos de aberturas, muy pronto.

En la primera etapa de la implementación, fundamentalmente queremos saber precio de costo, precio de venta y costo de envio de una cierta abertura (este último, siendo factible), tal como vamos a establecer.

**Precio de costo de una abertura**

En general decimos que el costo de una determinada abertura dependerá proporcionalmente de la superficie de la abertura, a razón de $8500 por metro cuadrado (cmc = Costo por Metro Cuadrado). Lo explicaremos con mayor precisión para cada tipo de abertura que se ofrece al mercado.

**Ventanas**

De las rectangulares se saben sus dimensiones; de las redondas el radio.
Al costo proporcional a la superficie, en las ventanas se suman $2500 fijos por los herrajes (accesorio), para calcular el precio de costo de esa abertura. 

Las únicas aberturas competitivas que se comercializan, por el momento son las ventanas redondas solamente. En el futuro podrían definirse otras.

preciocostoventana ->> proporcionalxsuperficie + herrajes

**Puertas**

Nuevamente su costo es función de las dimensiones y no llevan herrajes. En las puertas, el accesorio es la cerradura de seguridad, que incrementa el costo en $6850. Precio de costo proporcional a su superficie, más la cerradura.

preciocostopuerta ->> proporcionalxsuperficie + cerradura

**Portones**

Su costo es función de las dimensiones y también llevan accesorios. Los accesorios para portón poseen un costo de $25650. Precio de costo proporcional a su superficie, más accesorios.

preciocostoporton ->> proporcionalxsuperficie + accesoriosporton

> TIP: Al trabajar con constantes, es conveniente pensar en métodos simples que devuelvan un literal con los costos fijos (ej. costos: por metro cuadrado, de cerradura, de herrajes, etc) para evitar problemas de implementación, evitando así el uso de const. Es sólo una recomendación que por sí sola, NO condiciona seriamente la calificación.

**Envío de las aberturas**

Una abertura se puede enviar si su superficie es menor o igual a 12 metros cuadrados.
De una abertura se puede saber cuánto saldrá su envío; envío posee un mínimo de $7500 + (Costo por Metro Cuadrado / 4) por la medida del mayor de los lados de la abertura o "MM"; 
(aberturas redondas: considerar el diámetro como "mayor medida" o "MM").

O sea el envío es: 7500 + (cmc/4) * MM

**Precio al público de una abertura**

El precio al publico de la abertura es el precio de costo de la misma, con un margen de ganancia agregado; este margen es del 25% si se trata de ventanas, y del 30% en puertas y portones. Para todas las aberturas competitivas, el margen de ganancia agregado se reduce a la mitad.
La **ganancia** es un porcentaje del precio de costo.

ganancia ->> es porcentaje calculado sobre el precio de costo

preciopublicoabertura ->> preciocosto + ganancia

**Relación precio de venta y superficie (RPVS)**

Estará expresada en pesos por metro cuadrado. Es el cociente entre precio de venta de una abertura y su superficie

## 2- Clientes

Todos los clientes tienen una denominación.
Un cliente puede estar interesado cualquier abertura; se debe poder saber cuáles son las aberturas en las que se interesó un cliente.
Un cliente puede ser normal, o prioritario. Es prioritario cuando mostró interés en tres o más aberturas.

## Tests

Se provee un archivo con algunas definiciones de tests, completarlo y si corresponde, agregar nuevos.

## Requerimientos

**1. -OBLIGATORIO- Modelizar** como clases y si corresponde, objetos predefinidos, las entidades descriptas según lo explicado arriba.

**2. Permitir consultas** (ver debajo)

**3. Implementar tests**
 
## Consultas sobre el modelo

**De una abertura se debe poder saber:**

**a-** Precio de costo

**b-** Precio de venta al público

**c-** Si se puede enviar

**d-** Costo de envío

**e-** Relación entre precio de venta al público y superficie (RPVS)

**f-** Si es competitiva

**De un cliente se tiene que poder conocer:**

**a-** En cuántas aberturas se interesó

**b-** Si es prioritario

**Opcional c-** qué potencialidad de venta tenemos en ese cliente (es la suma de precios de venta al público de todas las aberturas en las que haya tenido interés)

**Opcional d-** Lista de nombres de los clientes potenciales (son los que se interesaron en una o más aberturas), en la que aparecerán primero los nombres de los clientes "prioritarios"
