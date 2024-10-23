ALTER TABLE campus
--ADD CONSTRAINT id_promocion
ADD FOREIGN KEY (id_promocion) REFERENCES promociones(id_promocion),
ADD FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor);

ALTER TABLE profesores
ADD FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
ADD FOREIGN KEY (id_campus) REFERENCES campus(id_campus);

ALTER TABLE promociones
ADD FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
ADD FOREIGN KEY (id_campus) REFERENCES campus(id_campus);

ALTER TABLE cursos
ADD FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
ADD FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor),
ADD FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
ADD FOREIGN KEY (id_promocion) REFERENCES promociones(id_promocion);