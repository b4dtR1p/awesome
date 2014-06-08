
" .vimrc
" Consultare: http://vimdoc.sourceforge.net/htmldoc/options.html per maggiori dettagli

" Per il supporto ai caratteri multi-byte (ad esempio CJK):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
       
set tabstop=4       " Numeri di spazi per la tabulazione nei file.
 
set shiftwidth=4    " Numero di spazi da utilizzare per ogni passo di (auto)indentazione.
 
set expandtab       " Usa il numero appropriato di spazi per il tasto <Tab>.
                    " Questi spazi vengono usati anche per l'indentazione con i comandi '>' e '<'
                    " e quando l'opzione 'autoindent' è attiva. Per inserire un tab quando 
                    " 'expandtab' è attivo, usare CTRL-V <Tab>.
 
set smarttab        " Quando attiva, un <Tab> all'inizio della riga inserisce il numero di spazi
                    " impostati in 'shiftwidth'. 'tabstop' è usato in altri posti
                    " Il tasto <BS> cancellerà un valore di spazi pari a 'shiftwidth' 
                    " all'inizio della riga.
 
set showcmd         " Mostra comandi (parziali) nella linea di stato.

set number          " Mostra i numeri delle linee.

set showmatch       " Quando una parentesi viene inserita, il cursore si sposta 
                    " momentaneamente sulla sua parentesi chiusa corrispondente. Solo se
                    " visibile o presente nella schermata. Il tempo in cui il 
                    " il cursore resta sulla parentesi chiusa può essere impostato con
                    " 'matchtime'.
 
set hlsearch        " Dopo una ricerca, evidenzia tutte le sue corrispondenze.
 
set incsearch       " Mentre si digita un comando di ricerca, mostra immediatamente 
                    " le corrispondenze trovate.
 
set ignorecase      " Ignora le maiuscole durante le ricerche.
 
set smartcase       " Sovrasta l'opzione 'ignorecase' se il pattern di ricerca
                    " contiene caratteri maiuscoli.
 
set backspace=2     " Specifica il funzionamento in modalità inserimento di <BS>, <Del>, CTRL-W
                    " e CTRL-U.  I tre oggetti, separati dalle virgole, dicono a Vim di,
                    " cancellare lo spazio bianco all'inizio della riga, l'interruzione di 
                    " riga e il carattere prima del punto in cui è iniziato il modalità inserimento.
 
set autoindent      " Copia l'indentazione della linea corrente quando se ne inizia una nuova
                    " (digitando <CR> in modalità inserimento oppure quando si usa "o" o "O"
                    " in modalità comando).
 
set textwidth=79    " La massima lunghezza di una riga. Una linea più lunga
                    " verrà interrotta dopo lo spazio per mantenere questo valore.
 
set formatoptions=c,q,r,t " Questa è una sequenza di lettere che indica come effettuare la
	            " formattazione.
                    "
                    " lettera    azione legata se presente nell'opzione 'formatoptions'
                    " -------   -------------------------------------------------------
                    " c         Tronca automaticamente i commenti secondo il valore di textwidth,
                    "           inserendo il carattere di commento automaticamente.
                    " q         Permette di formattare i commenti con "gg".
                    " r         Inserisce automaticamente il carattere di commento
                    "           ala pressione di <Enter> in modalità inserimento.
                    " t         Tronca le righe in accordo all'opzione textwidth (non viene applicato
                    "           ai commenti)

set ruler           " Mostra il numero di linea e di colonna della posizione del cursore,
                    " separati da virgola.
 
set background=dark " Quando impostato su "dark", Vim proverà ad utilizzare colori adeguati
                    " ad uno sfondo scuro. Quando impostato su "light", Vim proverà
                    " ad usare colori adeguati ad uno sfondo chiaro. 
                    " Non vengono accettati altri valori.

set mouse=a         " Abilita l'uso del mouse.


filetype plugin indent on
syntax on
set background=dark
colorscheme solarized