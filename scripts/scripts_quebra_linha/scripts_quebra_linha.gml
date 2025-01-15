// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wrap_text(text, max_width) {
    var words = string_split(text, " ");
    var wrapped_text = "";
    var line = "";

    for (var i = 0; i < array_length(words); i++) {
        if (string_width(line + words[i] + " ") > max_width) {
            wrapped_text += line + "#"; // '#' indica uma quebra de linha
            line = words[i] + " ";
        } else {
            line += words[i] + " ";
        }
    }

    wrapped_text += line; // Adiciona a última linha
    return wrapped_text;
}
