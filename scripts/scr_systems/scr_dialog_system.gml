/// @function scr_show_dialog(name, text_array)
/// @description Exibir uma caixa de diálogo com nome e sequência de textos
function scr_show_dialog(_name, _text_array) {
    if (!instance_exists(obj_dialog_controller)) {
        var _inst = instance_create_layer(0, 0, "Instances", obj_dialog_controller);
        _inst.char_name = _name;
        _inst.texts = _text_array;
        _inst.current_index = 0;
        return _inst;
    }
    return noone;
}
