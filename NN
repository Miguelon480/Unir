import pandas as pd
import numpy as np

# Cargar los datos
ventas = pd.read_csv('ventas.csv')
inventarios = pd.read_csv('inventarios.csv')
satisfaccion = pd.read_csv('satisfaccion.csv')

# Limpiar los datos eliminando filas con valores nulos
ventas.dropna(inplace=True)
inventarios.dropna(inplace=True)
satisfaccion.dropna(inplace=True)

# Ventas totales por producto y por tienda
ventas_totales_producto = ventas.groupby('Producto')['Cantidad'].sum()
ventas_totales_tienda = ventas.groupby('Tienda')['Cantidad'].sum()

# Ingresos totales por tienda
ventas['Ingresos'] = ventas['Cantidad'] * ventas['Precio_unitario']
ingresos_totales_tienda = ventas.groupby('Tienda')['Ingresos'].sum()

# Resumen estadístico de las ventas
resumen_ventas = ventas.describe()

# Promedio de ventas por tienda y categoría de productos
promedio_ventas_tienda_categoria = ventas.groupby(['Tienda', 'Categoría'])['Cantidad'].mean()

# Ventas totales por tienda o por categoría
ventas_totales_tienda_categoria = ventas.groupby(['Tienda', 'Categoría'])['Cantidad'].sum()

# Rotación de inventarios
inventarios['Rotacion'] = inventarios['Ventas_totales'] / inventarios['Stock_disponible']

# Tiendas con niveles críticos de inventario
niveles_criticos = inventarios[inventarios['Stock_disponible'] < (inventarios['Ventas_totales'] * 0.1)]

# Análisis de satisfacción del cliente
satisfaccion_media = satisfaccion.groupby('Tienda')['Satisfaccion'].mean()

# Tiendas con niveles bajos de satisfacción
tiendas_baja_satisfaccion = satisfaccion_media[satisfaccion_media < 60]

# Mediana y desviación estándar de las ventas totales
ventas_totales = ventas['Ingresos'].to_numpy()
mediana_ventas = np.median(ventas_totales)
desviacion_ventas = np.std(ventas_totales)

# Generar arrays aleatorios para proyecciones de ventas futuras
np.random.seed(42)
proyecciones_ventas = np.random.normal(loc=ventas_totales.mean(), scale=ventas_totales.std(), size=100)

# Mostrar resultados
print("Ventas totales por producto:")
print(ventas_totales_producto)

print("\nVentas totales por tienda:")
print(ventas_totales_tienda)

print("\nIngresos totales por tienda:")
print(ingresos_totales_tienda)

print("\nResumen estadístico de las ventas:")
print(resumen_ventas)

print("\nPromedio de ventas por tienda y categoría de productos:")
print(promedio_ventas_tienda_categoria)

print("\nVentas totales por tienda o por categoría:")
print(ventas_totales_tienda_categoria)

print("\nRotación de inventarios:")
print(inventarios)

print("\nTiendas con niveles críticos de inventario:")
print(niveles_criticos)

print("\nSatisfacción media por tienda:")
print(satisfaccion_media)

print("\nTiendas con niveles bajos de satisfacción:")
print(tiendas_baja_satisfaccion)

print("\nMediana de las ventas totales:")
print(mediana_ventas)

print("\nDesviación estándar de las ventas totales:")
print(desviacion_ventas)

print("\nProyecciones de ventas futuras:")
print(proyecciones_ventas)
