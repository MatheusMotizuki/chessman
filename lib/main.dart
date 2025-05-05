import 'package:flutter/cupertino.dart'; // Add this import for Cupertino widgets/colors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Add this import
import 'package:google_fonts/google_fonts.dart'; // Adicione esta importação

void main() => runApp(FilmeApp());

class Filme {
  String titulo;
  String genero;
  double nota;
  bool visto;

  Filme(
      {required this.titulo,
      required this.genero,
      required this.nota,
      this.visto = false});
}

class FilmeApp extends StatelessWidget {
  const FilmeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Filmes',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black, width: 2),
          ),
          filled: true,
          fillColor: Colors.grey.shade50,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
      home: const MainNavigationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  _MainNavigationPageState createState() => _MainNavigationPageState();
}

const Color inActiveIconColor = Color(0xFFB6B6B6);

// Definição dos SVG icons
const homeIcon =
    '''<svg width="22" height="21" viewBox="0 0 22 21" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.8727 9.98723C19.8613 9.99135 19.8519 9.99858 19.8416 10.0048C19.5363 10.1967 19.1782 10.3112 18.7909 10.3112C17.7029 10.3112 16.8174 9.43215 16.8174 8.35192C16.8174 8.00938 16.5391 7.73185 16.1955 7.73185C15.8508 7.73185 15.5726 8.00938 15.5726 8.35192C15.5726 9.43215 14.687 10.3112 13.6001 10.3112C12.5121 10.3112 11.6265 9.43215 11.6265 8.35192C11.6265 8.00938 11.3483 7.73185 11.0046 7.73185C10.66 7.73185 10.3817 8.00938 10.3817 8.35192C10.3817 9.43215 9.49617 10.3112 8.4092 10.3112C7.32119 10.3112 6.43563 9.43215 6.43563 8.35192C6.43563 8.00938 6.1574 7.73185 5.81377 7.73185C5.46909 7.73185 5.19086 8.00938 5.19086 8.35192C5.19086 9.43215 4.3053 10.3112 3.21834 10.3112C2.84563 10.3112 2.49992 10.2029 2.20196 10.0275C2.17393 10.012 2.14902 9.99548 2.11891 9.98413C1.59152 9.64056 1.24165 9.06692 1.23646 8.45406L2.17497 2.87958C2.33381 1.92832 3.15397 1.23912 4.1257 1.23912H17.8825C18.8543 1.23912 19.6744 1.92832 19.8333 2.88061L20.7635 8.35192C20.7635 9.03493 20.4084 9.63644 19.8727 9.98723ZM19.4834 17.7965C19.4834 18.8798 18.5968 19.7619 17.5057 19.7619H14.2271V15.2109C14.2271 14.8694 13.9479 14.5919 13.6042 14.5919H8.40401C8.06037 14.5919 7.78111 14.8694 7.78111 15.2109V19.7619H4.50256C3.41144 19.7619 2.52484 18.8798 2.52484 17.7965V11.4709C2.74804 11.5194 2.97956 11.5503 3.21834 11.5503C4.28246 11.5503 5.2272 11.0344 5.81377 10.241C6.3993 11.0344 7.34403 11.5503 8.4092 11.5503C9.47333 11.5503 10.4181 11.0344 11.0046 10.241C11.5902 11.0344 12.5349 11.5503 13.6001 11.5503C14.6642 11.5503 15.6089 11.0344 16.1955 10.241C16.781 11.0344 17.7258 11.5503 18.7909 11.5503C19.0297 11.5503 19.2602 11.5194 19.4834 11.4698V17.7965ZM9.02588 19.7619H12.9824V15.831H9.02588V19.7619ZM21.0625 2.67633C20.8029 1.12563 19.4657 0 17.8825 0H4.1257C2.54249 0 1.20532 1.12563 0.945776 2.67633L0 8.35192C0 9.38882 0.507667 10.3029 1.27903 10.8879V17.7965C1.27903 19.5628 2.7252 21 4.50256 21H17.5057C19.283 21 20.7292 19.5628 20.7292 17.7965V10.8797C21.4995 10.2844 22.0051 9.34652 21.9999 8.24875L21.0625 2.67633Z" fill="#FF7643"/>
</svg>''';

const heartIcon =
    '''<svg width="22" height="20" viewBox="0 0 22 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.1585 10.6702L11.2942 18.6186C11.1323 18.7822 10.8687 18.7822 10.7058 18.6186L2.84145 10.6702C1.81197 9.62861 1.2443 8.24408 1.2443 6.77039C1.2443 5.29671 1.81197 3.91218 2.84145 2.87063C3.90622 1.79552 5.30308 1.25744 6.70098 1.25744C8.09887 1.25744 9.49573 1.79552 10.5605 2.87063C10.8033 3.11607 11.1967 3.11607 11.4405 2.87063C13.568 0.720415 17.03 0.720415 19.1585 2.87063C20.188 3.91113 20.7557 5.29566 20.7557 6.77039C20.7557 8.24408 20.188 9.62966 19.1585 10.6702ZM20.0386 1.98013C17.5687 -0.516223 13.6313 -0.652578 11.0005 1.57316C8.36973 -0.652578 4.43342 -0.516223 1.96245 1.98013C0.696354 3.25977 0 4.96001 0 6.77039C0 8.57972 0.696354 10.281 1.96245 11.5607L9.82678 19.5091C10.1495 19.8364 10.575 20 11.0005 20C11.426 20 11.8505 19.8364 12.1743 19.5091L20.0386 11.5607C21.3036 10.2821 22 8.58077 22 6.77039C22 4.96001 21.3036 3.25872 20.0386 1.98013Z" fill="#B6B6B6"/>
</svg>''';

const addIcon =
    '''<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0 0 24 24">
<path d="M 12 2 C 6.4889971 2 2 6.4889971 2 12 C 2 17.511003 6.4889971 22 12 22 C 17.511003 22 22 17.511003 22 12 C 22 6.4889971 17.511003 2 12 2 z M 12 4 C 16.430123 4 20 7.5698774 20 12 C 20 16.430123 16.430123 20 12 20 C 7.5698774 20 4 16.430123 4 12 C 4 7.5698774 7.5698774 4 12 4 z M 11 7 L 11 11 L 7 11 L 7 13 L 11 13 L 11 17 L 13 17 L 13 13 L 17 13 L 17 11 L 13 11 L 13 7 L 11 7 z"></path>
</svg>''';

class _MainNavigationPageState extends State<MainNavigationPage> {
  int _selectedIndex = 0;
  final List<Filme> _filmes = [
    //Filme(titulo: "Interstellar", genero: "Ficção", nota: 9.5, visto: true),
    //Filme(titulo: "O Poderoso Chefão", genero: "Drama", nota: 10, visto: false),
  ];

  void updateCurrentIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Define the pages corresponding to each tab
    final List<Widget> pages = [
      ListaFilmesPage(filmes: _filmes), // Home/List page
      FormularioFilmePage(onSave: _adicionarFilme), // Add page
      PaginaFavoritos(
          // Favorites page
          filmes: _filmes.where((f) => f.nota >= 9 && f.visto).toList()),
    ];

    // Define active and inactive colors
    const Color activeColor =
        CupertinoColors.activeBlue; // Or your desired active color
    const Color inactiveColor =
        CupertinoColors.inactiveGray; // Or your desired inactive color

    return Scaffold(
      // Using Scaffold for overall structure, but with Cupertino TabBar
      body: pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _selectedIndex,
        onTap: updateCurrentIndex,
        // activeColor and inactiveColor are handled by the SvgPicture below
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.string(
              homeIcon, // Use the defined home SVG
              width: 22,
              height: 21,
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? activeColor : inactiveColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Filmes', // Text label for the tab
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.string(
              addIcon, // Use the defined chat/add SVG
              width: 24, // Adjust size as needed
              height: 24,
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? activeColor : inactiveColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Adicionar', // Text label for the tab
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.string(
              heartIcon, // Use the defined heart SVG
              width: 22,
              height: 20,
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2 ? activeColor : inactiveColor,
                BlendMode.srcIn,
              ),
            ),
            // activeIcon is not directly supported with SvgPicture this way,
            // but the color change indicates activity.
            label: 'Favoritos', // Text label for the tab
          ),
        ],
      ),
    );
  }

  void _adicionarFilme(Filme filme) {
    setState(() {
      _filmes.add(filme);
      _selectedIndex = 0; // Return to home page after adding
    });
  }
}

class ListaFilmesPage extends StatefulWidget {
  final List<Filme> filmes;

  const ListaFilmesPage({super.key, required this.filmes});

  @override
  _ListaFilmesPageState createState() => _ListaFilmesPageState();
}

class _ListaFilmesPageState extends State<ListaFilmesPage> {
  void _editarFilme(int index, Filme filme) {
    setState(() {
      widget.filmes[index] = filme;
    });
  }

  // Removing swipe-to-delete for grid view. Deletion could be added
  // via long-press or on the edit screen.
  // void _removerFilme(int index) { ... }

  void _navegarParaFormulario({Filme? filme, int? index}) async {
    final resultado = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FormularioFilmePage(
          filme: filme,
          onSave: (filmeAtualizado) {
            // This callback is mainly for adding new films via the main nav.
            // Editing updates are handled by the pop result below.
          },
        ),
        fullscreenDialog: true, // Use modal presentation
      ),
    );

    // If the form was popped with a result (save pressed in edit mode)
    if (resultado != null && resultado is Filme && index != null) {
      _editarFilme(index, resultado);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Use CupertinoPageScaffold for a more native iOS feel if desired,
    // but Scaffold works fine too.
    return Scaffold(
      appBar: AppBar(
        // Keep the simple AppBar style
        title: const Text(
          'Filmes',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        shape: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 0.5),
        ),
      ),
      body: widget.filmes.isEmpty
          ? Center(
              // Keep the empty state
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.film, // Use Cupertino icon
                    size: 60,
                    color: Colors.grey.shade400),
                const SizedBox(height: 16),
                Text(
                  'Nenhum filme adicionado',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                ),
              ],
            ))
          : GridView.builder(
              // Use GridView.builder for the two-column layout
              padding: const EdgeInsets.all(12.0), // Padding around the grid
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two columns
                crossAxisSpacing: 10.0, // Spacing between columns
                mainAxisSpacing: 10.0, // Spacing between rows
                childAspectRatio:
                    0.85, // Adjust aspect ratio for square-ish items
              ),
              itemCount: widget.filmes.length,
              itemBuilder: (context, index) {
                final filme = widget.filmes[index];
                return _FilmeGridItem(
                  filme: filme,
                  onTap: () =>
                      _navegarParaFormulario(filme: filme, index: index),
                );
              },
            ),
    );
  }
}

// Custom widget for each item in the grid
class _FilmeGridItem extends StatelessWidget {
  final Filme filme;
  final VoidCallback onTap;

  const _FilmeGridItem({
    required this.filme,
    required this.onTap,
  });

  // Helper function to get background decoration based on genre
  BoxDecoration _getBackgroundDecoration(String genero) {
    // Placeholder: Use colors/gradients for now.
    // Replace with DecorationImage for actual repeating patterns.
    Color backgroundColor;
    switch (genero.toLowerCase()) {
      case 'comédia':
        backgroundColor = Colors.yellow.shade100;
        // Example for image:
        // return BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/comedy_pattern.png'), // Provide your asset path
        //     repeat: ImageRepeat.repeat,
        //     colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop), // Optional overlay
        //   ),
        // );
        break;
      case 'ação':
        backgroundColor = Colors.red.shade100;
        break;
      case 'drama':
        backgroundColor = Colors.blue.shade100;
        break;
      case 'ficção científica':
        backgroundColor = Colors.purple.shade100;
        break;
      case 'terror':
        backgroundColor = Colors.grey.shade700; // Darker for terror
        break;
      case 'suspense':
        backgroundColor = Colors.indigo.shade100;
        break;
      case 'romance':
        backgroundColor = Colors.pink.shade100;
        break;
      case 'animação':
        backgroundColor = Colors.orange.shade100;
        break;
      default:
        backgroundColor = Colors.grey.shade100; // Default background
    }
    return BoxDecoration(color: backgroundColor);
  }

  // Helper to determine text color based on background
  Color _getTextColor(String genero) {
    // Make text darker on light backgrounds, lighter on dark backgrounds
    switch (genero.toLowerCase()) {
      case 'terror':
        return Colors.white; // Light text on dark background
      default:
        return Colors.black87; // Dark text on light backgrounds
    }
  }

  @override
  Widget build(BuildContext context) {
    final decoration = _getBackgroundDecoration(filme.genero);
    final textColor = _getTextColor(filme.genero);
    final subtleTextColor = textColor.withOpacity(0.7);

    return GestureDetector(
      onTap: onTap,
      child: Card(
        // Use Card for elevation and rounded corners
        elevation: 1.5, // Subtle elevation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        clipBehavior: Clip.antiAlias, // Clip content to bounds
        child: Container(
          // Apply the background decoration here
          decoration: decoration,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Space out content
              children: [
                // Top section: Title and Watched Icon
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        filme.titulo,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600, // Bolder title
                          color: textColor, // Use dynamic text color
                        ),
                        maxLines: 2, // Limit title lines
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      filme.visto
                          ? CupertinoIcons.check_mark_circled_solid
                          : CupertinoIcons.circle,
                      color: filme.visto
                          ? CupertinoColors.activeGreen // Changed to green
                          : Colors.grey.shade400, // Adjusted inactive color
                      size: 20,
                    ),
                  ],
                ),
                // Bottom section: Genre and Rating
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Genre Chip - smaller
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        // Use a slightly transparent background for the chip
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        filme.genero,
                        style: TextStyle(
                          fontSize: 11,
                          // Ensure chip text is readable on its background
                          color: textColor.withOpacity(0.9),
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Rating - smaller
                    Row(
                      children: [
                        Icon(CupertinoIcons.star_fill, // Filled star
                            size: 14,
                            color: Colors.amber.shade700), // Keep amber color
                        const SizedBox(width: 3),
                        Text(
                          filme.nota.toStringAsFixed(1), // Format nota
                          style: TextStyle(
                            fontSize: 12,
                            color: subtleTextColor, // Use dynamic subtle color
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormularioFilmePage extends StatefulWidget {
  final Filme? filme;
  final Function(Filme) onSave;

  const FormularioFilmePage({super.key, this.filme, required this.onSave});

  @override
  _FormularioFilmePageState createState() => _FormularioFilmePageState();
}

class _FormularioFilmePageState extends State<FormularioFilmePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _tituloController;
  // Remove genero controller: late TextEditingController _generoController;
  late TextEditingController _notaController;
  bool _visto = false;

  // Define genre options
  final List<String> _generos = [
    'Ação',
    'Comédia',
    'Drama',
    'Ficção Científica',
    'Terror',
    'Suspense',
    'Romance',
    'Animação',
    'Documentário',
    'Aventura',
    'Fantasia',
    'Musical'
  ];
  String? _selectedGenero; // State variable for selected genre

  @override
  void initState() {
    super.initState();
    _tituloController = TextEditingController(text: widget.filme?.titulo ?? '');
    // Initialize selected genre
    _selectedGenero = widget.filme?.genero;
    // Ensure the initial genre is in the list, otherwise default or handle
    if (_selectedGenero != null && !_generos.contains(_selectedGenero)) {
      // Option 1: Add it to the list if not present (might grow indefinitely)
      // _generos.add(_selectedGenero!);
      // Option 2: Default to null or the first item if not found
      _selectedGenero = null; // Or _generos.first;
    }
    // If adding a new movie, default to the first genre or null
    if (widget.filme == null && _generos.isNotEmpty) {
      // _selectedGenero = _generos.first; // Optionally default to first
    }

    _notaController =
        TextEditingController(text: widget.filme?.nota.toString() ?? '');
    _visto = widget.filme?.visto ?? false;
  }

  @override
  void dispose() {
    _tituloController.dispose();
    // Remove genero controller disposal: _generoController.dispose();
    _notaController.dispose();
    super.dispose();
  }

  void _salvar() {
    // Use Form validation if needed
    final titulo = _tituloController.text.trim();
    // Use selected genre: final genero = _generoController.text.trim();
    final genero = _selectedGenero;
    final notaStr = _notaController.text.trim();
    final nota = double.tryParse(notaStr);

    // Simple validation example
    if (titulo.isEmpty ||
        genero == null || // Check if a genre was selected
        nota == null ||
        nota < 0 ||
        nota > 10) {
      showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: const Text('Erro de Validação'),
          content: const Text(
              'Por favor, preencha todos os campos corretamente (Título, Gênero, Nota entre 0 e 10).'),
          actions: [
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      );
      return;
    }

    final novoFilme = Filme(
      titulo: titulo,
      genero: genero, // Use selected genre
      nota: nota,
      visto: _visto,
    );

    // If editing, pop with the updated movie
    if (widget.filme != null) {
      Navigator.pop(context, novoFilme);
    } else {
      // If adding, call the onSave callback and pop
      widget.onSave(novoFilme);
      // No need to pop here if onSave handles navigation (like setting index)
      // If FormularioFilmePage was pushed modally, you might pop here:
      // Navigator.pop(context);
    }
  }

  // Function to show the genre picker
  void _showGenrePicker() {
    // Find the initial index
    int initialItemIndex =
        _selectedGenero != null ? _generos.indexOf(_selectedGenero!) : 0;
    if (initialItemIndex < 0) {
      initialItemIndex = 0; // Handle case where genre isn't in list
    }

    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: 32.0, // Height of each item
            // This is called when selected item is changed.
            onSelectedItemChanged: (int selectedIndex) {
              setState(() {
                _selectedGenero = _generos[selectedIndex];
              });
            },
            scrollController: FixedExtentScrollController(
              initialItem: initialItemIndex,
            ),
            children: List<Widget>.generate(_generos.length, (int index) {
              return Center(child: Text(_generos[index]));
            }),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Use GestureDetector to dismiss keyboard when tapping outside fields
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle:
              Text(widget.filme == null ? 'Adicionar Filme' : 'Editar Filme'),
          // Remove the leading back button
          // leading: CupertinoNavigationBarBackButton(
          //   onPressed: () => Navigator.pop(context),
          // ),
          // Add Save button in the nav bar
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: _salvar,
            child: const Text('Salvar'), // Call the save function
          ),
        ),
        child: SafeArea(
          // Use SafeArea to avoid intrusions
          child: Form(
            key: _formKey,
            // Use ListView for scrollability, especially with keyboard
            child: ListView(
              children: [
                CupertinoFormSection.insetGrouped(
                  header: const Text('DETALHES DO FILME'),
                  children: [
                    CupertinoTextFormFieldRow(
                      controller: _tituloController,
                      prefix: const Text('Título'),
                      placeholder: 'Nome do filme',
                      textCapitalization: TextCapitalization.sentences,
                      validator: (value) =>
                          value!.isEmpty ? 'Campo obrigatório' : null,
                    ),
                    // Row for Genre Picker
                    CupertinoFormRow(
                      prefix: const Text('Gênero'),
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerRight,
                        onPressed: _showGenrePicker,
                        child: Text(
                          _selectedGenero ?? 'Selecione...',
                          style: TextStyle(
                            color: _selectedGenero == null
                                ? CupertinoColors.placeholderText
                                    .resolveFrom(context)
                                : CupertinoColors.label.resolveFrom(context),
                          ),
                        ),
                      ),
                    ),
                    CupertinoTextFormFieldRow(
                      controller: _notaController,
                      prefix: const Text('Nota'),
                      placeholder: '0.0 - 10.0',
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        final nota = double.tryParse(value ?? '');
                        if (nota == null || nota < 0 || nota > 10) {
                          return 'Nota inválida (0-10)';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                CupertinoFormSection.insetGrouped(
                  header: const Text('STATUS'),
                  children: [
                    CupertinoFormRow(
                      prefix: const Text('Já assistido?'),
                      child: CupertinoSwitch(
                        value: _visto,
                        onChanged: (value) => setState(() => _visto = value),
                        activeTrackColor: CupertinoColors.activeGreen,
                      ),
                    ),
                  ],
                ),
                // Removed the bottom ElevatedButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// PaginaFavoritos: Displays movies marked as favorites (visto=true, nota>=9)
class PaginaFavoritos extends StatelessWidget {
  final List<Filme> filmes;

  const PaginaFavoritos({super.key, required this.filmes});

  @override
  Widget build(BuildContext context) {
    // Use CupertinoPageScaffold for iOS look and feel
    return CupertinoPageScaffold(
      // Use CupertinoNavigationBar
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Favoritos'), // Simple title
      ),
      child: SafeArea(
        // Ensure content avoids notches and system areas
        child: filmes.isEmpty
            ? Center(
                // Centered empty state message
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.heart, // Use Cupertino heart icon
                      size: 60,
                      color: CupertinoColors.systemGrey.resolveFrom(context),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Nenhum filme favorito',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .tabLabelTextStyle
                          .copyWith(
                              color: CupertinoColors.secondaryLabel
                                  .resolveFrom(context)),
                    ),
                    Text(
                      'Filmes vistos com nota 9+ aparecem aqui.',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .tabLabelTextStyle // Use tabLabelTextStyle as an alternative
                          .copyWith(
                              color: CupertinoColors.tertiaryLabel
                                  .resolveFrom(context)),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                // Use ListView for the list of favorites
                itemCount: filmes.length,
                itemBuilder: (context, index) {
                  final filme = filmes[index];
                  // Use CupertinoListTile for standard iOS list item appearance
                  return CupertinoListTile(
                    title: Text(
                      filme.titulo,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(filme.genero), // Show genre as subtitle
                    // Display rating in the trailing section
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Keep row compact
                      children: [
                        Icon(
                          CupertinoIcons.star_fill, // Filled star icon
                          color: CupertinoColors.systemYellow.resolveFrom(
                              context), // Use system yellow for stars
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          filme.nota.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 15,
                            color: CupertinoColors.secondaryLabel
                                .resolveFrom(context),
                          ),
                        ),
                      ],
                    ),
                    // Optional: Add padding if needed, but CupertinoListTile handles some
                    // padding: const EdgeInsets.symmetric(vertical: 8.0),
                  );
                },
              ),
      ),
    );
  }
}
