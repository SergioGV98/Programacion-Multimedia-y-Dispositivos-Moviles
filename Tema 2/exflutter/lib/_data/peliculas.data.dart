import 'pelicula.class.dart';

List<Pelicula> generarListaDePeliculas() {
  return [
    Pelicula(
      id: 1,
      titulo: 'El Secreto de sus Ojos',
      director: 'Juan José Campanella',
      reparto: ['Ricardo Darín', 'Soledad Villamil', 'Guillermo Francella'],
      fechaEstreno: DateTime(2009, 8, 13),
      genero: PeliculaGenero.drama,
    ),
    Pelicula(
      id: 2,
      titulo: 'Regreso al Futuro',
      director: 'Robert Zemeckis',
      reparto: ['Michael J. Fox', 'Christopher Lloyd', 'Lea Thompson'],
      fechaEstreno: DateTime(1985, 7, 3),
      genero: PeliculaGenero.cienciaFiccion,
    ),
    Pelicula(
      id: 3,
      titulo: 'La La Land',
      //director: 'Damien Chazelle',
      reparto: ['Ryan Gosling', 'Emma Stone', 'John Legend'],
      //fechaEstreno: DateTime(2016, 12, 9),
      genero: PeliculaGenero.romance,
    ),
    Pelicula(
      id: 4,
      titulo: 'Pulp Fiction',
      director: 'Quentin Tarantino',
      reparto: ['John Travolta', 'Samuel L. Jackson', 'Uma Thurman'],
      fechaEstreno: DateTime(1994, 5, 21),
      genero: PeliculaGenero.drama,
    ),
    Pelicula(
      id: 5,
      titulo: 'Matrix',
      //director: 'The Wachowskis',
      reparto: ['Keanu Reeves', 'Laurence Fishburne', 'Carrie-Anne Moss'],
      fechaEstreno: DateTime(1999, 3, 24),
      genero: PeliculaGenero.cienciaFiccion,
    ),
    Pelicula(
      id: 6,
      titulo: 'Forrest Gump',
      director: 'Robert Zemeckis',
      reparto: ['Tom Hanks', 'Robin Wright', 'Gary Sinise'],
      //fechaEstreno: DateTime(1994, 7, 6),
      genero: PeliculaGenero.drama,
    ),
    Pelicula(
      id: 7,
      titulo: 'Titanic',
      //director: 'James Cameron',
      reparto: ['Leonardo DiCaprio', 'Kate Winslet', 'Billy Zane'],
      //fechaEstreno: DateTime(1997, 11, 18),
      genero: PeliculaGenero.romance,
    ),
    Pelicula(
      id: 8,
      titulo: 'Jurassic Park',
      director: 'Steven Spielberg',
      reparto: ['Sam Neill', 'Laura Dern', 'Jeff Goldblum'],
      fechaEstreno: DateTime(1993, 6, 11),
      genero: PeliculaGenero.accion,
    ),
    Pelicula(
      id: 9,
      titulo: 'The Dark Knight',
      director: 'Christopher Nolan',
      reparto: ['Christian Bale', 'Heath Ledger', 'Aaron Eckhart'],
      fechaEstreno: DateTime(2008, 7, 14),
      genero: PeliculaGenero.accion,
    ),
    Pelicula(
      id: 10,
      titulo: 'The Shawshank Redemption',
      director: 'Frank Darabont',
      reparto: ['Tim Robbins', 'Morgan Freeman', 'Bob Gunton'],
      fechaEstreno: DateTime(1994, 9, 10),
      genero: PeliculaGenero.drama,
    ),
    Pelicula(
      id: 11,
      titulo: 'The Godfather',
      director: 'Francis Ford Coppola',
      reparto: ['Marlon Brando', 'Al Pacino', 'James Caan'],
      fechaEstreno: DateTime(1972, 3, 24),
      genero: PeliculaGenero.drama,
    ),
    Pelicula(
      id: 12,
      titulo: 'Inception',
      director: 'Christopher Nolan',
      reparto: ['Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Ellen Page'],
      fechaEstreno: DateTime(2010, 7, 22),
      genero: PeliculaGenero.cienciaFiccion,
    ),
    Pelicula(
      id: 13,
      titulo: 'Schindler\'s List',
      director: 'Steven Spielberg',
      reparto: ['Liam Neeson', 'Ben Kingsley', 'Ralph Fiennes'],
      fechaEstreno: DateTime(1993, 11, 30),
      genero: PeliculaGenero.drama,
    ),
    Pelicula(
      id: 14,
      titulo: 'The Lord of the Rings: The Fellowship of the Ring',
      director: 'Peter Jackson',
      reparto: ['Elijah Wood', 'Ian McKellen', 'Viggo Mortensen'],
      fechaEstreno: DateTime(2001, 12, 19),
      genero: PeliculaGenero.aventura,
    ),
    Pelicula(
      id: 15,
      titulo: 'The Matrix Reloaded',
      director: 'The Wachowskis',
      reparto: ['Keanu Reeves', 'Laurence Fishburne', 'Carrie-Anne Moss'],
      fechaEstreno: DateTime(2003, 5, 7),
      genero: PeliculaGenero.cienciaFiccion,
    ),
    Pelicula(
      id: 16,
      titulo: 'The Matrix Revolutions',
      director: 'The Wachowskis',
      reparto: ['Keanu Reeves', 'Laurence Fishburne', 'Carrie-Anne Moss'],
      fechaEstreno: DateTime(2003, 10, 27),
      genero: PeliculaGenero.cienciaFiccion,
    ),
    Pelicula(
      id: 17,
      titulo: 'Avatar',
      director: 'James Cameron',
      reparto: ['Sam Worthington', 'Zoe Saldana', 'Sigourney Weaver'],
      fechaEstreno: DateTime(2009, 12, 18),
      genero: PeliculaGenero.cienciaFiccion,
    ),
    Pelicula(
      id: 18,
      titulo: 'The Silence of the Lambs',
      director: 'Jonathan Demme',
      reparto: ['Jodie Foster', 'Anthony Hopkins', 'Scott Glenn'],
      fechaEstreno: DateTime(1991, 2, 14),
      genero: PeliculaGenero.terror,
    ),
    Pelicula(
      id: 19,
      titulo: 'Gladiator',
      director: 'Ridley Scott',
      reparto: ['Russell Crowe', 'Joaquin Phoenix', 'Connie Nielsen'],
      fechaEstreno: DateTime(2000, 5, 5),
      genero: PeliculaGenero.accion,
    ),
    Pelicula(
      id: 20,
      titulo: 'Eternal Sunshine of the Spotless Mind',
      director: 'Michel Gondry',
      reparto: ['Jim Carrey', 'Kate Winslet', 'Mark Ruffalo'],
      fechaEstreno: DateTime(2004, 3, 19),
      genero: PeliculaGenero.drama,
    ),
    // Agrega más películas según sea necesario
  ];
}
