// Variáveis globais para gerenciar mensagens sequenciais
mensagens = [
    "O Corpo é um guerreiro. A batalha nunca termina..",
    "É uma batalha silenciosa. Conheça-o e fortaleça-o.",
    "A guerra no seu organismo continua. Proteja-se.",
    "O sistema imunológico nunca desiste.\nVocê também não deve.",
    "Derrotou o perigo hoje, mas a luta é constante.",
	"A todos que decicaram seu tempo.",
	"Obrigado por jogarem. >3"
];
indice_mensagem = 0; // Índice da mensagem atual
estado = "fadein";
opacidade = 0;
fade_velocidade = 0.03; 
tempo_espera = 250; // Tempo para mostrar cada mensagem
contador_tempo = 0; 
